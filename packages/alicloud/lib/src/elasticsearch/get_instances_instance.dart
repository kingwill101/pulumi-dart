// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  final String createdAt;
  final int dataNodeAmount;
  final int dataNodeDiskSize;
  final String dataNodeDiskType;
  final String dataNodeSpec;
  final String description;
  final String id;
  final String instanceChargeType;
  final String status;
  final Map<String, String> tags;
  final String updatedAt;
  final String version;
  final String vswitchId;

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
      createdAt: map['createdAt'] as String,
      dataNodeAmount: map['dataNodeAmount'] as int,
      dataNodeDiskSize: map['dataNodeDiskSize'] as int,
      dataNodeDiskType: map['dataNodeDiskType'] as String,
      dataNodeSpec: map['dataNodeSpec'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
      version: map['version'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

