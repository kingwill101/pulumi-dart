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
  const SwarmState({
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
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCategory: (() { final guardedValue = map['diskCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isOutdated: (() { final guardedValue = map['isOutdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      needSlb: (() { final guardedValue = map['needSlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeNumber: (() { final guardedValue = map['nodeNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SwarmNode>(guardedValue, (value) => SwarmNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releaseEip: (() { final guardedValue = map['releaseEip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      slbId: (() { final guardedValue = map['slbId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

