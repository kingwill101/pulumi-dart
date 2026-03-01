// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  final pulumi.Input<String>? agentVersion;
  final pulumi.Input<String>? cidrBlock;
  final pulumi.Input<String>? diskCategory;
  final pulumi.Input<int>? diskSize;
  final pulumi.Input<String>? imageId;
  final pulumi.Input<String>? instanceType;
  final pulumi.Input<bool>? isOutdated;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  final pulumi.Input<bool>? needSlb;
  final pulumi.Input<int>? nodeNumber;
  final pulumi.Input<List<ClusterNode>>? nodes;
  final pulumi.Input<String>? password;
  final pulumi.Input<bool>? releaseEip;
  final pulumi.Input<String>? securityGroupId;
  final pulumi.Input<int>? size;
  final pulumi.Input<String>? slbId;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ClusterState].
  /// [agentVersion] Optional.
  /// [cidrBlock] Optional.
  /// [diskCategory] Optional.
  /// [diskSize] Optional.
  /// [imageId] Optional.
  /// [instanceType] Optional.
  /// [isOutdated] Optional.
  /// [name] Optional.
  /// [namePrefix] Optional.
  /// [needSlb] Optional.
  /// [nodeNumber] Optional.
  /// [nodes] Optional.
  /// [password] Optional.
  /// [releaseEip] Optional.
  /// [securityGroupId] Optional.
  /// [size] Optional.
  /// [slbId] Optional.
  /// [vpcId] Optional.
  /// [vswitchId] Optional.
  ClusterState({
    pulumi.Output<String>? agentVersion,
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? diskCategory,
    pulumi.Output<int>? diskSize,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? instanceType,
    pulumi.Output<bool>? isOutdated,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<bool>? needSlb,
    pulumi.Output<int>? nodeNumber,
    pulumi.Output<List<ClusterNode>>? nodes,
    pulumi.Output<String>? password,
    pulumi.Output<bool>? releaseEip,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<int>? size,
    pulumi.Output<String>? slbId,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      agentVersion = pulumi.Input.asOptionalInput<String>(agentVersion),
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      diskCategory = pulumi.Input.asOptionalInput<String>(diskCategory),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      isOutdated = pulumi.Input.asOptionalInput<bool>(isOutdated),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      needSlb = pulumi.Input.asOptionalInput<bool>(needSlb),
      nodeNumber = pulumi.Input.asOptionalInput<int>(nodeNumber),
      nodes = pulumi.Input.asOptionalInput<List<ClusterNode>>(nodes),
      password = pulumi.Input.asOptionalInput<String>(password),
      releaseEip = pulumi.Input.asOptionalInput<bool>(releaseEip),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      size = pulumi.Input.asOptionalInput<int>(size),
      slbId = pulumi.Input.asOptionalInput<String>(slbId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'cidrBlock': ?cidrBlock,
      'diskCategory': ?diskCategory,
      'diskSize': ?diskSize,
      'imageId': ?imageId,
      'instanceType': ?instanceType,
      'isOutdated': ?isOutdated,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'needSlb': ?needSlb,
      'nodeNumber': ?nodeNumber,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<ClusterNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ClusterNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'releaseEip': ?releaseEip,
      'securityGroupId': ?securityGroupId,
      'size': ?size,
      'slbId': ?slbId,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      agentVersion: map['agentVersion'] == null ? null : pulumi.Output.create<String>(map['agentVersion'] as String),
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      diskCategory: map['diskCategory'] == null ? null : pulumi.Output.create<String>(map['diskCategory'] as String),
      diskSize: map['diskSize'] == null ? null : pulumi.Output.create<int>(map['diskSize'] as int),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      isOutdated: map['isOutdated'] == null ? null : pulumi.Output.create<bool>(map['isOutdated'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      needSlb: map['needSlb'] == null ? null : pulumi.Output.create<bool>(map['needSlb'] as bool),
      nodeNumber: map['nodeNumber'] == null ? null : pulumi.Output.create<int>(map['nodeNumber'] as int),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<ClusterNode>>(pulumi.Input.decodeList<ClusterNode>(map['nodes'], (value) => ClusterNode.fromMap((value as Map).cast<String, dynamic>()))),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      releaseEip: map['releaseEip'] == null ? null : pulumi.Output.create<bool>(map['releaseEip'] as bool),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      slbId: map['slbId'] == null ? null : pulumi.Output.create<String>(map['slbId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

