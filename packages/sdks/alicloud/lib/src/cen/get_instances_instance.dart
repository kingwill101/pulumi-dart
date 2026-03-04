// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// List of CEN Bandwidth Package IDs in the specified CEN instance.
  final pulumi.Input<List<String>> cenBandwidthPackageIds;

  /// ID of the CEN instance.
  final pulumi.Input<String> cenId;

  /// Name of the CEN instance.
  final pulumi.Input<String> cenInstanceName;

  /// The creation time of the CEN Instance.
  final pulumi.Input<String> createTime;

  /// Description of the CEN instance.
  final pulumi.Input<String> description;

  /// ID of the CEN instance.
  final pulumi.Input<String> id;

  /// Name of the CEN instance.
  final pulumi.Input<String> name;

  /// Indicates the allowed level of CIDR block overlapping.
  final pulumi.Input<String> protectionLevel;

  /// The status of CEN instance. Valid value: `Active`, `Creating` and `Deleting`.
  final pulumi.Input<String> status;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

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
      cenBandwidthPackageIds: pulumi.Input.fromValue(
        (map['cenBandwidthPackageIds'] as List).cast<String>(),
      ),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cenInstanceName: pulumi.Input.fromValue(map['cenInstanceName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      protectionLevel: pulumi.Input.fromValue(map['protectionLevel'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
