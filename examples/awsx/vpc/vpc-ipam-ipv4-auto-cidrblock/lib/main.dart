import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class VpcNodejsVpcIpamIpv4AutoCidrblockStack extends pulumi.Stack {
  late final pulumi.Output<String> regionName;
  late final pulumi.Output<List<Map<String, dynamic>>?> subnetLayout;
  late final pulumi.Output<List<Map<String, dynamic>>> subnets;

  VpcNodejsVpcIpamIpv4AutoCidrblockStack() {
    const repository = 'pulumi/pulumi-awsx';
    const testcase = 'vpc-ipam-ipv4-auto-cidrblock';

    final tags = {'repository': repository, 'testcase': testcase};

    final currentRegion = pulumi.output(
      aws.index.getRegion(aws.index.GetRegionArgs()),
    );

    final myVpcIpam = aws.ec2.VpcIpam(
      'myVpcIpam',
      args: aws.ec2.VpcIpamArgs(
        operatingRegions: [
          aws.ec2.VpcIpamOperatingRegion(
            regionName: currentRegion.apply((region) => region.name),
          ),
        ].input(),
        description: currentRegion.apply(
          (region) => 'IPAM for $repository example $testcase',
        ),
        tags: tags.input(),
      ),
    );

    final myVpcIpamPool = aws.ec2.VpcIpamPool(
      'myVpcIpamPool',
      args: aws.ec2.VpcIpamPoolArgs(
        addressFamily: 'ipv4'.input(),
        ipamScopeId: myVpcIpam.privateDefaultScopeId,
        locale: currentRegion.apply((region) => region.name),
        tags: tags.input(),
      ),
    );

    final myVpcIpamPoolCidr = aws.ec2.VpcIpamPoolCidr(
      'myVpcIpamPoolCidr',
      args: aws.ec2.VpcIpamPoolCidrArgs(
        ipamPoolId: myVpcIpamPool.id,
        cidr: '172.20.0.0/16'.input(),
      ),
    );

    final myVpc = awsx.ec2.Vpc(
      'myVpc',
      args: awsx.ec2.VpcArgs(
        ipv4IpamPoolId: myVpcIpamPool.id,
        ipv4NetmaskLength: 24.input(),
        tags: tags.input(),
        subnetStrategy: awsx_ec2.SubnetAllocationStrategy.valueAuto.input(),
      ),
      options: pulumi.ComponentResourceOptions(dependsOn: [myVpcIpamPoolCidr]),
    );

    regionName = currentRegion.apply((region) => region.name);
    subnetLayout = myVpc.subnetLayout;
    subnets = myVpc.subnets.apply<List<Map<String, dynamic>>>((items) {
      final values = items ?? <Map<String, dynamic>>[];
      return values
          .map(
            (subnet) => {
              'availabilityZone': subnet['availabilityZone'],
              'cidrBlock': subnet['cidrBlock'],
            },
          )
          .toList();
    });
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('regionName', regionName),
      pulumi.OutputProperty('subnetLayout', subnetLayout),
      pulumi.OutputProperty('subnets', subnets),
    ];
  }
}
