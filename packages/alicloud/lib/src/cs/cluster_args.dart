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
    required String cidrBlock,
    String? diskCategory,
    int? diskSize,
    String? imageId,
    required String instanceType,
    bool? isOutdated,
    String? name,
    String? namePrefix,
    bool? needSlb,
    int? nodeNumber,
    required String password,
    bool? releaseEip,
    int? size,
    required String vswitchId,
  }) :
      cidrBlock = pulumi.Input.asInput<String>(cidrBlock),
      diskCategory = pulumi.Input.asOptionalInput<String>(diskCategory),
      diskSize = pulumi.Input.asOptionalInput<int>(diskSize),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      isOutdated = pulumi.Input.asOptionalInput<bool>(isOutdated),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      needSlb = pulumi.Input.asOptionalInput<bool>(needSlb),
      nodeNumber = pulumi.Input.asOptionalInput<int>(nodeNumber),
      password = pulumi.Input.asInput<String>(password),
      releaseEip = pulumi.Input.asOptionalInput<bool>(releaseEip),
      size = pulumi.Input.asOptionalInput<int>(size),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      cidrBlock: map['cidrBlock'] as String,
      diskCategory: map['diskCategory'] == null ? null : map['diskCategory'] as String,
      diskSize: map['diskSize'] == null ? null : map['diskSize'] as int,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      instanceType: map['instanceType'] as String,
      isOutdated: map['isOutdated'] == null ? null : map['isOutdated'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      needSlb: map['needSlb'] == null ? null : map['needSlb'] as bool,
      nodeNumber: map['nodeNumber'] == null ? null : map['nodeNumber'] as int,
      password: map['password'] as String,
      releaseEip: map['releaseEip'] == null ? null : map['releaseEip'] as bool,
      size: map['size'] == null ? null : map['size'] as int,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

