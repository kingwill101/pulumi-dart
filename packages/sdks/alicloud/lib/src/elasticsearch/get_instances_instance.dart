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
  GetInstancesInstance({
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
      createdAt: (map['createdAt'] as String).input(),
      dataNodeAmount: (map['dataNodeAmount'] as int).input(),
      dataNodeDiskSize: (map['dataNodeDiskSize'] as int).input(),
      dataNodeDiskType: (map['dataNodeDiskType'] as String).input(),
      dataNodeSpec: (map['dataNodeSpec'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instanceChargeType: (map['instanceChargeType'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      version: (map['version'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

