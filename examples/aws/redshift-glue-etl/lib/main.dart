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
        cidrBlock: '10.0.0.0/16'.input(),
        enableDnsHostnames: true.input(),
        enableDnsSupport: true.input(),
      ),
    );

    final subnet = aws.ec2.Subnet(
      'subnet',
      args: aws.ec2.SubnetArgs(vpcId: vpc.id, cidrBlock: '10.0.1.0/24'.input()),
    );

    final subnetGroup = aws.redshift.SubnetGroup(
      'subnet-group',
      args: aws.redshift.SubnetGroupArgs(
        subnetIds: pulumi.Output.all([
          subnet.id,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
      ),
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
        }).input(),
        managedPolicyArns: [
          'arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess',
        ].input(),
      ),
    );

    aws.ec2.VpcEndpoint(
      's3-vpc-endpoint',
      args: aws.ec2.VpcEndpointArgs(
        vpcId: vpc.id,
        serviceName: 'com.amazonaws.$awsRegion.s3'.input(),
        routeTableIds: pulumi.Output.all([
          vpc.mainRouteTableId,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
      ),
    );

    final cluster = aws.redshift.Cluster(
      'cluster',
      args: aws.redshift.ClusterArgs(
        clusterIdentifier: clusterIdentifier.input(),
        databaseName: clusterDbName.input(),
        masterUsername: clusterDbUsername.input(),
        masterPassword: clusterDbPassword.input(),
        nodeType: clusterNodeType.input(),
        clusterSubnetGroupName: subnetGroup.name,
        clusterType: 'single-node'.input(),
        publiclyAccessible: false.input(),
        skipFinalSnapshot: true.input(),
        vpcSecurityGroupIds: pulumi.Output.all([
          vpc.defaultSecurityGroupId,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
        iamRoles: pulumi.Output.all([
          redshiftRole.arn,
        ]).apply<List<String>>((List<String> ids) => [ids[0]]).input(),
      ),
    );

    const every15Minutes = 'cron(0/15 * * * ? *)';

    final glueCatalogDb = aws.glue.CatalogDatabase(
      'glue-catalog-db',
      args: aws.glue.CatalogDatabaseArgs(name: glueDbName.input()),
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
        }).input(),
        managedPolicyArns: [
          'arn:aws:iam::aws:policy/AmazonS3FullAccess',
          'arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole',
        ].input(),
      ),
    );

    final eventsBucket = aws.s3.Bucket(
      'events',
      args: aws.s3.BucketArgs(forceDestroy: true.input()),
    );

    aws.glue.Crawler(
      'glue-crawler',
      args: aws.glue.CrawlerArgs(
        databaseName: glueCatalogDb.name,
        role: glueRole.arn,
        schedule: every15Minutes.input(),
        s3Targets: [
          aws.glue.CrawlerS3Target(
            path: eventsBucket.bucket
                .apply<String>((name) => 's3://$name')
                .input(),
          ),
        ].input(),
      ),
    );

    final glueRedshiftConnection = aws.glue.Connection(
      'glue-redshift-connection',
      args: aws.glue.ConnectionArgs(
        connectionType: 'JDBC'.input(),
        connectionProperties: cluster.endpoint.apply<Map<String, String>>((
          String endpoint,
        ) {
          return <String, String>{
            'JDBC_CONNECTION_URL': 'jdbc:redshift://$endpoint/$clusterDbName',
            'USERNAME': clusterDbUsername,
            'PASSWORD': clusterDbPassword,
          };
        }).input(),
        physicalConnectionRequirements: aws.glue
            .ConnectionPhysicalConnectionRequirements(
              securityGroupIdLists: cluster.vpcSecurityGroupIds
                  .apply<List<String>>((List<String> ids) => ids)
                  .input(),
              availabilityZone: subnet.availabilityZone,
              subnetId: subnet.id,
            )
            .input(),
      ),
    );

    final glueJobBucket = aws.s3.Bucket(
      'glue-job-bucket',
      args: aws.s3.BucketArgs(forceDestroy: true.input()),
    );

    aws.s3.BucketObject(
      'glue-job.py',
      args: aws.s3.BucketObjectArgs(
        bucket: glueJobBucket.id,
        key: 'glue-job.py'.input(),
        source: pulumi.FileAsset('./glue-job.py').input(),
      ),
    );

    final glueJob = aws.glue.Job(
      'glue-job',
      args: aws.glue.JobArgs(
        roleArn: glueRole.arn,
        glueVersion: '3.0'.input(),
        connections: pulumi.Output.all([
          glueRedshiftConnection.name,
        ]).apply<List<String>>((ids) => ids.cast<String>()).input(),
        numberOfWorkers: 10.input(),
        workerType: 'G.1X'.input(),
        defaultArguments:
            pulumi.Output.all([
              glueRedshiftConnection.name,
              eventsBucket.bucket,
              redshiftRole.arn,
              glueJobBucket.bucket,
            ]).apply<Map<String, String>>((List<String> values) {
              final connectionName = values[0];
              final eventsBucketName = values[1];
              final redshiftRoleArn = values[2];
              final glueJobBucketName = values[3];

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
            }).input(),
        command: aws.glue
            .JobCommand(
              scriptLocation: glueJobBucket.bucket
                  .apply<String>((String name) => 's3://$name/glue-job.py')
                  .input(),
              pythonVersion: '3'.input(),
            )
            .input(),
      ),
    );

    aws.glue.Trigger(
      'trigger',
      args: aws.glue.TriggerArgs(
        schedule: every15Minutes.input(),
        type: 'SCHEDULED'.input(),
        actions: [aws.glue.TriggerAction(jobName: glueJob.name)].input(),
      ),
    );

    dataBucketName = eventsBucket.bucket;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('dataBucketName', dataBucketName)];
  }
}
