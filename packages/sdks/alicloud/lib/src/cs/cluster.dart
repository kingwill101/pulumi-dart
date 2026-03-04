import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

class Cluster extends pulumi.CustomResource {
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
  late final pulumi.Output<List<Map<String, dynamic>>> nodes;
  late final pulumi.Output<String> password;
  late final pulumi.Output<bool?> releaseEip;
  late final pulumi.Output<String> securityGroupId;
  late final pulumi.Output<int?> size;
  late final pulumi.Output<String> slbId;
  late final pulumi.Output<String> vpcId;
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_cs_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cs/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentVersion = registerOutput<String>('agentVersion');
    cidrBlock = registerOutput<String>('cidrBlock');
    diskCategory = registerOutput<String?>('diskCategory');
    diskSize = registerOutput<int?>('diskSize');
    imageId = registerOutput<String?>('imageId');
    instanceType = registerOutput<String>('instanceType');
    isOutdated = registerOutput<bool?>('isOutdated');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String?>('namePrefix');
    needSlb = registerOutput<bool?>('needSlb');
    nodeNumber = registerOutput<int?>('nodeNumber');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    password = registerOutput<String>('password');
    releaseEip = registerOutput<bool?>('releaseEip');
    securityGroupId = registerOutput<String>('securityGroupId');
    size = registerOutput<int?>('size');
    slbId = registerOutput<String>('slbId');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cs/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    agentVersion = registerOutput<String>('agentVersion');
    cidrBlock = registerOutput<String>('cidrBlock');
    diskCategory = registerOutput<String?>('diskCategory');
    diskSize = registerOutput<int?>('diskSize');
    imageId = registerOutput<String?>('imageId');
    instanceType = registerOutput<String>('instanceType');
    isOutdated = registerOutput<bool?>('isOutdated');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String?>('namePrefix');
    needSlb = registerOutput<bool?>('needSlb');
    nodeNumber = registerOutput<int?>('nodeNumber');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    password = registerOutput<String>('password');
    releaseEip = registerOutput<bool?>('releaseEip');
    securityGroupId = registerOutput<String>('securityGroupId');
    size = registerOutput<int?>('size');
    slbId = registerOutput<String>('slbId');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
