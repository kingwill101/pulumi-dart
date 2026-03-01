import 'package:pulumi/pulumi.dart' as pulumi;
import 'swarm_args.dart';
import 'swarm_node.dart';

class Swarm extends pulumi.CustomResource {
  late final pulumi.Output<String> agentVersion;
  late final pulumi.Output<String> cidrBlock;
  late final pulumi.Output<String?> diskCategory;
  late final pulumi.Output<int?> diskSize;
  late final pulumi.Output<String?> imageId;
  late final pulumi.Output<String> instanceType;
  late final pulumi.Output<bool?> isOutdated;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> namePrefix;
  late final pulumi.Output<bool?> needSlb;
  late final pulumi.Output<int?> nodeNumber;
  late final pulumi.Output<List<SwarmNode>> nodes;
  late final pulumi.Output<String> password;
  late final pulumi.Output<bool?> releaseEip;
  late final pulumi.Output<String> securityGroupId;
  late final pulumi.Output<int?> size;
  late final pulumi.Output<String> slbId;
  late final pulumi.Output<String> vpcId;
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Swarm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Swarm]. {@macro pulumi_cs_swarm_swarm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Swarm(
    String name, {
    SwarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cs/swarm:Swarm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentVersion = registerOutput<String>('agentVersion');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.diskCategory = registerOutput<String?>('diskCategory');
    this.diskSize = registerOutput<int?>('diskSize');
    this.imageId = registerOutput<String?>('imageId');
    this.instanceType = registerOutput<String>('instanceType');
    this.isOutdated = registerOutput<bool?>('isOutdated');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.needSlb = registerOutput<bool?>('needSlb');
    this.nodeNumber = registerOutput<int?>('nodeNumber');
    this.nodes = registerOutput<List<SwarmNode>>('nodes');
    this.password = registerOutput<String>('password');
    this.releaseEip = registerOutput<bool?>('releaseEip');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.size = registerOutput<int?>('size');
    this.slbId = registerOutput<String>('slbId');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
