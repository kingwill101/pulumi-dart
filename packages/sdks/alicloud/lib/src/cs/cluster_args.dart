// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_cs_cluster_cluster_args_doc}
class ClusterArgs {
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

  /// Creates a new [ClusterArgs].
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
  ClusterArgs({
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

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      diskCategory: (() { final guardedValue = map['diskCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSize: (() { final guardedValue = map['diskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      isOutdated: (() { final guardedValue = map['isOutdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      needSlb: (() { final guardedValue = map['needSlb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodeNumber: (() { final guardedValue = map['nodeNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      releaseEip: (() { final guardedValue = map['releaseEip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

