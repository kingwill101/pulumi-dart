// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// List of CEN Bandwidth Package IDs in the specified CEN instance.
  final List<String> cenBandwidthPackageIds;
  /// ID of the CEN instance.
  final String cenId;
  /// Name of the CEN instance.
  final String cenInstanceName;
  /// The creation time of the CEN Instance.
  final String createTime;
  /// Description of the CEN instance.
  final String description;
  /// ID of the CEN instance.
  final String id;
  /// Name of the CEN instance.
  final String name;
  /// Indicates the allowed level of CIDR block overlapping.
  final String protectionLevel;
  /// The status of CEN instance. Valid value: `Active`, `Creating` and `Deleting`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetInstancesInstance].
  /// [cenBandwidthPackageIds] List of CEN Bandwidth Package IDs in the specified CEN instance.
  /// [cenId] ID of the CEN instance.
  /// [cenInstanceName] Name of the CEN instance.
  /// [createTime] The creation time of the CEN Instance.
  /// [description] Description of the CEN instance.
  /// [id] ID of the CEN instance.
  /// [name] Name of the CEN instance.
  /// [protectionLevel] Indicates the allowed level of CIDR block overlapping.
  /// [status] The status of CEN instance. Valid value: `Active`, `Creating` and `Deleting`.
  /// [tags] A mapping of tags to assign to the resource.
  GetInstancesInstance({
    required this.cenBandwidthPackageIds,
    required this.cenId,
    required this.cenInstanceName,
    required this.createTime,
    required this.description,
    required this.id,
    required this.name,
    required this.protectionLevel,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenBandwidthPackageIds': cenBandwidthPackageIds,
      'cenId': cenId,
      'cenInstanceName': cenInstanceName,
      'createTime': createTime,
      'description': description,
      'id': id,
      'name': name,
      'protectionLevel': protectionLevel,
      'status': status,
      'tags': tags,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      cenBandwidthPackageIds: (map['cenBandwidthPackageIds'] as List).cast<String>(),
      cenId: map['cenId'] as String,
      cenInstanceName: map['cenInstanceName'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      protectionLevel: map['protectionLevel'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

