// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'swarm_node.dart';

/// Input properties used for looking up and filtering Swarm resources.
class SwarmState {
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
  final pulumi.Input<List<SwarmNode>>? nodes;
  final pulumi.Input<String>? password;
  final pulumi.Input<bool>? releaseEip;
  final pulumi.Input<String>? securityGroupId;
  final pulumi.Input<int>? size;
  final pulumi.Input<String>? slbId;
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [SwarmState].
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
  SwarmState({
    this.agentVersion,
    this.cidrBlock,
    this.diskCategory,
    this.diskSize,
    this.imageId,
    this.instanceType,
    this.isOutdated,
    this.name,
    this.namePrefix,
    this.needSlb,
    this.nodeNumber,
    this.nodes,
    this.password,
    this.releaseEip,
    this.securityGroupId,
    this.size,
    this.slbId,
    this.vpcId,
    this.vswitchId,
  });

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
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<SwarmNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<SwarmNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'releaseEip': ?releaseEip,
      'securityGroupId': ?securityGroupId,
      'size': ?size,
      'slbId': ?slbId,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory SwarmState.fromMap(Map<String, dynamic> map) {
    return SwarmState(
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      diskCategory: map['diskCategory'] == null ? null : (map['diskCategory']! as String).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize']! as int).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      isOutdated: map['isOutdated'] == null ? null : (map['isOutdated']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix']! as String).input(),
      needSlb: map['needSlb'] == null ? null : (map['needSlb']! as bool).input(),
      nodeNumber: map['nodeNumber'] == null ? null : (map['nodeNumber']! as int).input(),
      nodes: map['nodes'] == null ? null : (pulumi.Input.decodeList<SwarmNode>(map['nodes']!, (value) => SwarmNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      releaseEip: map['releaseEip'] == null ? null : (map['releaseEip']! as bool).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      slbId: map['slbId'] == null ? null : (map['slbId']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

