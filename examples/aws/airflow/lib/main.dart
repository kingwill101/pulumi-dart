import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class AirflowStack extends pulumi.Stack {
  late final pulumi.Output<String> postgresHost;
  late final pulumi.Output<String> redisHost;

  AirflowStack() {
    final config = pulumi.Config('airflow');
    final dbPassword = config.require('dbPassword');

    final vpc = aws.ec2.Vpc(
      'airflow-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.20.0.0/16'.input(),
        enableDnsHostnames: true.input(),
        enableDnsSupport: true.input(),
      ),
    );

    final subnetA = aws.ec2.Subnet(
      'airflow-subnet-a',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: '10.20.1.0/24'.input(),
        mapPublicIpOnLaunch: true.input(),
      ),
    );
    final subnetB = aws.ec2.Subnet(
      'airflow-subnet-b',
      args: aws.ec2.SubnetArgs(
        vpcId: vpc.id,
        cidrBlock: '10.20.2.0/24'.input(),
        mapPublicIpOnLaunch: true.input(),
      ),
    );

    final securityGroup = aws.ec2.SecurityGroup(
      'airflow-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 5432.input(),
            toPort: 5432.input(),
            cidrBlocks: ['10.20.0.0/16'].input(),
          ),
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 6379.input(),
            toPort: 6379.input(),
            cidrBlocks: ['10.20.0.0/16'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final dbSubnets = aws.rds.SubnetGroup(
      'dbsubnets',
      args: aws.rds.SubnetGroupArgs(
        subnetIds: pulumi.Output.all([subnetA.id, subnetB.id]),
      ),
    );

    final db = aws.rds.Instance(
      'postgresdb',
      args: aws.rds.InstanceArgs(
        engine: 'postgres'.input(),
        instanceClass: 'db.t3.micro'.input(),
        allocatedStorage: 20.input(),
        dbSubnetGroupName: dbSubnets.id,
        vpcSecurityGroupIds: securityGroup.id.apply((id) => [id]),
        dbName: 'airflow'.input(),
        username: 'airflow'.input(),
        password: dbPassword.input(),
        skipFinalSnapshot: true.input(),
      ),
    );

    final cacheSubnets = aws.elasticache.SubnetGroup(
      'cachesubnets',
      args: aws.elasticache.SubnetGroupArgs(
        subnetIds: pulumi.Output.all([subnetA.id, subnetB.id]),
      ),
    );

    final cacheCluster = aws.elasticache.Cluster(
      'cachecluster',
      args: aws.elasticache.ClusterArgs(
        engine: 'redis'.input(),
        nodeType: 'cache.t2.micro'.input(),
        numCacheNodes: 1.input(),
        subnetGroupName: cacheSubnets.id,
        securityGroupIds: securityGroup.id.apply((id) => [id]),
      ),
    );

    aws.ecs.Cluster('airflow-ecs-cluster');

    postgresHost = db.endpoint.apply((e) => e.split(':').first);
    redisHost = cacheCluster.cacheNodes.apply((nodes) {
      if (nodes.isEmpty) {
        return '';
      }
      return (nodes[0]['address'] as String?) ?? '';
    });
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('postgresHost', postgresHost),
      pulumi.OutputProperty('redisHost', redisHost),
    ];
  }
}
