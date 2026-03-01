import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class RedshiftGlueEtlStack extends pulumi.Stack {
  late final pulumi.Output<String> dataBucketName;

  RedshiftGlueEtlStack() {
    final config = pulumi.Config();
    final clusterIdentifier = config.require('clusterIdentifier');
    final clusterNodeType = config.require('clusterNodeType');
    final clusterDbName = config.require('clusterDBName');
    final clusterDbUsername = config.require('clusterDBUsername');
    final clusterDbPassword = config.require('clusterDBPassword');
    final glueDbName = config.require('glueDBName');

    final awsRegion = pulumi.Config('aws').require('region');

    final vpc = aws.ec2.Vpc(
      'vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.0.0.0/16',
        enableDnsHostnames: true,
      ),
    );

    final subnet = aws.ec2.Subnet(
      'subnet',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: '10.0.1.0/24',
      ),
    );

    final subnetGroup = aws.redshift.SubnetGroup(
      'subnet-group',
      args: aws.redshift.SubnetGroupArgs(subnetIds: [subnet.id].output()),
    );

    final redshiftRole = aws.iam.Role(
      'redshift-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'redshift.amazonaws.com'},
            },
          ],
        }),
        managedPolicyArns: ['arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess'].output(),
      ),
    );

    aws.ec2.VpcEndpoint(
      's3-vpc-endpoint',
      args: aws.ec2.VpcEndpointArgs(
        vpcId: vpc.id,
        serviceName: 'com.amazonaws.$awsRegion.s3',
        routeTableIds: [vpc.mainRouteTableId].output(),
      ),
    );

    final cluster = aws.redshift.Cluster(
      'cluster',
      args: aws.redshift.ClusterArgs(
        clusterIdentifier: clusterIdentifier,
        databaseName: clusterDbName,
        masterUsername: clusterDbUsername,
        masterPassword: clusterDbPassword,
        nodeType: clusterNodeType,
        clusterSubnetGroupName: subnetGroup.name,
        clusterType: 'single-node',
        publiclyAccessible: false,
        skipFinalSnapshot: true,
        vpcSecurityGroupIds: [vpc.defaultSecurityGroupId].output(),
        iamRoles: [redshiftRole.arn].output(),
      ),
    );

    const every15Minutes = 'cron(0/15 * * * ? *)';

    final glueCatalogDb = aws.glue.CatalogDatabase(
      'glue-catalog-db',
      args: aws.glue.CatalogDatabaseArgs(name: glueDbName),
    );

    final glueRole = aws.iam.Role(
      'glue-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Action': 'sts:AssumeRole',
              'Effect': 'Allow',
              'Principal': {'Service': 'glue.amazonaws.com'},
            },
          ],
        }),
        managedPolicyArns: [
          'arn:aws:iam::aws:policy/AmazonS3FullAccess',
          'arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole',
        ].output(),
      ),
    );

    final eventsBucket = aws.s3.Bucket(
      'events',
      args: aws.s3.BucketArgs(forceDestroy: true),
    );

    aws.glue.Crawler(
      'glue-crawler',
      args: aws.glue.CrawlerArgs(
        databaseName: glueCatalogDb.name,
        role: glueRole.arn,
        schedule: every15Minutes,
        s3Targets: [
          aws.glue.CrawlerS3Target(
            path: eventsBucket.bucket.apply((name) => 's3://$name'),
          ),
        ].output(),
      ),
    );

    final glueRedshiftConnection = aws.glue.Connection(
      'glue-redshift-connection',
      args: aws.glue.ConnectionArgs(
        connectionType: 'JDBC',
        connectionProperties: cluster.endpoint.apply((endpoint) {
          return <String, String>{
            'JDBC_CONNECTION_URL': 'jdbc:redshift://$endpoint/$clusterDbName',
            'USERNAME': clusterDbUsername,
            'PASSWORD': clusterDbPassword,
          };
        }),
        physicalConnectionRequirements: aws
            .glue
            .ConnectionPhysicalConnectionRequirements(
              securityGroupIdLists: cluster.vpcSecurityGroupIds,
              availabilityZone: subnet.availabilityZone,
              subnetId: subnet.id,
            ),
      ),
    );

    final glueJobBucket = aws.s3.Bucket(
      'glue-job-bucket',
      args: aws.s3.BucketArgs(forceDestroy: true),
    );

    aws.s3.BucketObject(
      'glue-job.py',
      args: aws.s3.BucketObjectArgs(
        bucket: glueJobBucket.id,
        key: 'glue-job.py',
        source: pulumi.FileAsset('./glue-job.py'),
      ),
    );

    final glueJob = aws.glue.Job(
      'glue-job',
      args: aws.glue.JobArgs(
        roleArn: glueRole.arn,
        glueVersion: '3.0',
        connections: [glueRedshiftConnection.name].output(),
        numberOfWorkers: 10,
        workerType: 'G.1X',
        defaultArguments: pulumi
            .Output
            .all([
              glueRedshiftConnection.name,
              eventsBucket.bucket,
              redshiftRole.arn,
              glueJobBucket.bucket,
            ])
            .apply((values) {
              final connectionName = values[0] as String;
              final eventsBucketName = values[1] as String;
              final redshiftRoleArn = values[2] as String;
              final glueJobBucketName = values[3] as String;

              return <String, String>{
                '--job-bookmark-option': 'job-bookmark-enable',
                '--ConnectionName': connectionName,
                '--GlueDBName': glueDbName,
                '--GlueDBTableName': eventsBucketName.replaceAll('-', '_'),
                '--RedshiftDBName': clusterDbName,
                '--RedshiftDBTableName': 'events',
                '--RedshiftRoleARN': redshiftRoleArn,
                '--TempDir': 's3://$glueJobBucketName/glue-job-temp',
              };
            }),
        command: aws.glue.JobCommand(
          scriptLocation: glueJobBucket.bucket.apply(
            (name) => 's3://$name/glue-job.py',
          ),
          pythonVersion: '3',
        ),
      ),
    );

    aws.glue.Trigger(
      'trigger',
      args: aws.glue.TriggerArgs(
        schedule: every15Minutes,
        type: 'SCHEDULED',
        actions: [aws.glue.TriggerAction(jobName: glueJob.name)].output(),
      ),
    );

    dataBucketName = eventsBucket.bucket;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('dataBucketName', dataBucketName)];
  }
}

