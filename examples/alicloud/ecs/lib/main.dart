import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_alicloud/ecs.dart' as alicloudecs;
import 'package:pulumi_alicloud/resourcemanager.dart'
    as alicloudresourcemanager;
import 'package:pulumi_alicloud/vpc.dart' as alicloudvpc;

class AlicloudEcsStack extends pulumi.Stack {
  AlicloudEcsStack() : super() {
    final exampleRg = alicloudresourcemanager.ResourceGroup(
      'pulumiDeployment',
      args: alicloudresourcemanager.ResourceGroupArgs(
        displayName: 'Pulumi Example RG'.output(),
        resourceGroupName: 'pulumiDeployment'.output(),
      ),
    );

    final exampleVpc = alicloudvpc.Network(
      'pulumiExampleVpc',
      args: alicloudvpc.NetworkArgs(
        description: 'Pulumi Example VPC.'.output(),
        resourceGroupId: exampleRg.id,
      ),
    );

    final exampleSubnet = alicloudvpc.Subnet(
      'pulumiExampleSubnet',
      args: alicloudvpc.SubnetArgs(
        zoneId: 'us-east-1a'.output(),
        cidrBlock: '172.20.112.0/20'.output(),
        description: 'System created default virtual switch.'.output(),
        vpcId: exampleVpc.id,
      ),
    );

    final exampleSg = alicloudecs.SecurityGroup(
      'pulumiExampleSg',
      args: alicloudecs.SecurityGroupArgs(
        description: 'System created security group.'.output(),
        innerAccessPolicy: 'Accept'.output(),
        vpcId: exampleVpc.id,
      ),
    );

    final exampleInstance = alicloudecs.Instance(
      'pulumiExampleInstance',
      args: alicloudecs.InstanceArgs(
        availabilityZone: 'us-east-1a'.output(),
        creditSpecification: 'Standard'.output(),
        imageId: 'aliyun_3_x64_20G_alibase_20220527.vhd'.output(),
        instanceChargeType: 'PostPaid'.output(),
        instanceType: 'ecs.t6-c2m1.large'.output(),
        internetChargeType: 'PayByTraffic'.output(),
        internetMaxBandwidthOut: 25.output(),
        resourceGroupId: exampleRg.id,
        securityGroups: pulumi.Output.all([exampleSg.id.apply((id) => id)]),
        spotStrategy: 'NoSpot'.output(),
        status: 'Running'.output(),
        stoppedMode: 'StopCharging'.output(),
        systemDiskCategory: 'cloud_essd'.output(),
        systemDiskPerformanceLevel: 'PL0'.output(),
        tags: {'company': 'pulumi'}.output(),
        volumeTags: {'company': 'pulumi'}.output(),
        vswitchId: exampleSubnet.id,
      ),
    );

    registerOutputs({'publicIp': exampleInstance.publicIp});
  }
}
