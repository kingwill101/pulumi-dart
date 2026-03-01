import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

Future<void> run() async {
  final config = pulumi.Config();
  final dbName = config.require('db_name');
  final dbUsername = config.require('db_username');
  final dbPassword = config.require('db_password');
  final adminUsername = config.require('admin_username');
  final adminPassword = config.require('admin_password');

  final vpc = awsx.ec2.Vpc(
    'vpc',
    args: awsx.ec2.VpcArgs(numberOfAvailabilityZones: 2.input()),
  );

  final subnetGroup = aws.rds.SubnetGroup(
    'dbsubnets',
    args: aws.rds.SubnetGroupArgs(subnetIds: vpc.privateSubnetIds),
  );

  final cluster = aws.ecs.Cluster('cluster');

  final db = aws.rds.Instance(
    'db',
    args: aws.rds.InstanceArgs(
      engine: 'postgres'.input(),
      instanceClass: 'db.t3.micro'.input(),
      allocatedStorage: 5.input(),
      dbSubnetGroupName: subnetGroup.id,
      dbName: dbName.input(),
      username: dbUsername.input(),
      password: dbPassword.input(),
      skipFinalSnapshot: true.input(),
      publiclyAccessible: false.input(),
    ),
  );

  final connectionString = db.endpoint.apply<String>((endpoint) {
    return 'postgres://$dbUsername:$dbPassword@$endpoint/$dbName?sslmode=disable';
  });

  final loadBalancer = awsx.lb.ApplicationLoadBalancer('loadbalancer');

  awsx.ecs.FargateService(
    'service',
    args: awsx.ecs.FargateServiceArgs(
      cluster: cluster.arn,
      desiredCount: 1.input(),
      taskDefinitionArgs: awsx.ecs.FargateServiceTaskDefinition(
        container: awsx.ecs.TaskDefinitionContainerDefinition(
          name: 'service'.input(),
          image: 'miniflux/miniflux:latest'.input(),
          portMappings: [
            awsx.ecs.TaskDefinitionPortMapping(
              containerPort: 8080.input(),
              targetGroup: loadBalancer.defaultTargetGroup,
            ),
          ].input(),
          environment: [
            awsx.ecs.TaskDefinitionKeyValuePair(
              name: 'DATABASE_URL'.input(),
              value: connectionString,
            ),
            awsx.ecs.TaskDefinitionKeyValuePair(
              name: 'RUN_MIGRATIONS'.input(),
              value: '1'.input(),
            ),
            awsx.ecs.TaskDefinitionKeyValuePair(
              name: 'CREATE_ADMIN'.input(),
              value: '1'.input(),
            ),
            awsx.ecs.TaskDefinitionKeyValuePair(
              name: 'ADMIN_USERNAME'.input(),
              value: adminUsername.input(),
            ),
            awsx.ecs.TaskDefinitionKeyValuePair(
              name: 'ADMIN_PASSWORD'.input(),
              value: adminPassword.input(),
            ),
          ].input(),
        ),
      ).input(),
    ),
    options: pulumi.ComponentResourceOptions(
      customTimeouts: pulumi.CustomTimeouts(
        create: '20m',
        update: '20m',
        delete: '20m',
      ),
    ),
  );

  final url = loadBalancer.loadBalancer.apply<String>((lb) {
    return lb.dnsName.apply((dnsName) => 'http://${dnsName ?? ''}:8080');
  });

  pulumi.export('url', url);
}
