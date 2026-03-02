// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_swarm_swarm_args_doc}
/// The set of arguments for Swarm.
/// {@endtemplate}
/// {@macro pulumi_cs_swarm_swarm_args_doc}
class SwarmArgs {
  final pulumi.Input<String> cidrBlock;
  final pulumi.Input<String>? diskCategory;
  final pulumi.Input<int>? diskSize;
  final pulumi.Input<String>? imageId;
  final pulumi.Input<String> instanceType;
  final pulumi.Input<bool>? isOutdated;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? namePrefix;
  final pulumi.Input<bool>? needSlb;
  final pulumi.Input<int>? nodeNumber;
  final pulumi.Input<String> password;
  final pulumi.Input<bool>? releaseEip;
  final pulumi.Input<int>? size;
  final pulumi.Input<String> vswitchId;

  /// Creates a new [SwarmArgs].
  /// [cidrBlock] Required.
  /// [diskCategory] Optional.
  /// [diskSize] Optional.
  /// [imageId] Optional.
  /// [instanceType] Required.
  /// [isOutdated] Optional.
  /// [name] Optional.
  /// [namePrefix] Optional.
  /// [needSlb] Optional.
  /// [nodeNumber] Optional.
  /// [password] Required.
  /// [releaseEip] Optional.
  /// [size] Optional.
  /// [vswitchId] Required.
  SwarmArgs({
    required this.cidrBlock,
    this.diskCategory,
    this.diskSize,
    this.imageId,
    required this.instanceType,
    this.isOutdated,
    this.name,
    this.namePrefix,
    this.needSlb,
    this.nodeNumber,
    required this.password,
    this.releaseEip,
    this.size,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'diskCategory': ?diskCategory,
      'diskSize': ?diskSize,
      'imageId': ?imageId,
      'instanceType': instanceType,
      'isOutdated': ?isOutdated,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'needSlb': ?needSlb,
      'nodeNumber': ?nodeNumber,
      'password': password,
      'releaseEip': ?releaseEip,
      'size': ?size,
      'vswitchId': vswitchId,
    };
  }

  factory SwarmArgs.fromMap(Map<String, dynamic> map) {
    return SwarmArgs(
      cidrBlock: (map['cidrBlock'] as String).input(),
      diskCategory: map['diskCategory'] == null ? null : (map['diskCategory'] as String).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize'] as int).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      isOutdated: map['isOutdated'] == null ? null : (map['isOutdated'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namePrefix: map['namePrefix'] == null ? null : (map['namePrefix'] as String).input(),
      needSlb: map['needSlb'] == null ? null : (map['needSlb'] as bool).input(),
      nodeNumber: map['nodeNumber'] == null ? null : (map['nodeNumber'] as int).input(),
      password: (map['password'] as String).input(),
      releaseEip: map['releaseEip'] == null ? null : (map['releaseEip'] as bool).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

