// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<int> dataNodeAmount;
  final pulumi.Input<int> dataNodeDiskSize;
  final pulumi.Input<String> dataNodeDiskType;
  final pulumi.Input<String> dataNodeSpec;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> instanceChargeType;
  final pulumi.Input<String> status;
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> updatedAt;
  final pulumi.Input<String> version;
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetInstancesInstance].
  /// [createdAt] Required.
  /// [dataNodeAmount] Required.
  /// [dataNodeDiskSize] Required.
  /// [dataNodeDiskType] Required.
  /// [dataNodeSpec] Required.
  /// [description] Required.
  /// [id] Required.
  /// [instanceChargeType] Required.
  /// [status] Required.
  /// [tags] Required.
  /// [updatedAt] Required.
  /// [version] Required.
  /// [vswitchId] Required.
  const GetInstancesInstance({
    required this.createdAt,
    required this.dataNodeAmount,
    required this.dataNodeDiskSize,
    required this.dataNodeDiskType,
    required this.dataNodeSpec,
    required this.description,
    required this.id,
    required this.instanceChargeType,
    required this.status,
    required this.tags,
    required this.updatedAt,
    required this.version,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'dataNodeAmount': dataNodeAmount,
      'dataNodeDiskSize': dataNodeDiskSize,
      'dataNodeDiskType': dataNodeDiskType,
      'dataNodeSpec': dataNodeSpec,
      'description': description,
      'id': id,
      'instanceChargeType': instanceChargeType,
      'status': status,
      'tags': tags,
      'updatedAt': updatedAt,
      'version': version,
      'vswitchId': vswitchId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dataNodeAmount: pulumi.Input.fromValue(map['dataNodeAmount'] as int),
      dataNodeDiskSize: pulumi.Input.fromValue(map['dataNodeDiskSize'] as int),
      dataNodeDiskType: pulumi.Input.fromValue(map['dataNodeDiskType'] as String),
      dataNodeSpec: pulumi.Input.fromValue(map['dataNodeSpec'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceChargeType: pulumi.Input.fromValue(map['instanceChargeType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

