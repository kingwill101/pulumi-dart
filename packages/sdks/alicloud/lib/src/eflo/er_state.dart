// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Er resources.
class ErState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Description.
  final pulumi.Input<String>? description;
  /// Lingjun HUB name
  final pulumi.Input<String>? erName;
  /// Primary zone
  final pulumi.Input<String>? masterZoneId;
  /// region information
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group instance.
  final pulumi.Input<String>? resourceGroupId;
  /// Status
  final pulumi.Input<String>? status;
  /// Label List
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ErState].
  /// [createTime] The creation time of the resource
  /// [description] Description.
  /// [erName] Lingjun HUB name
  /// [masterZoneId] Primary zone
  /// [regionId] region information
  /// [resourceGroupId] The ID of the resource group instance.
  /// [status] Status
  /// [tags] Label List
  ErState({
    this.createTime,
    this.description,
    this.erName,
    this.masterZoneId,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'erName': ?erName,
      'masterZoneId': ?masterZoneId,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory ErState.fromMap(Map<String, dynamic> map) {
    return ErState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      erName: map['erName'] == null ? null : (map['erName'] as String).input(),
      masterZoneId: map['masterZoneId'] == null ? null : (map['masterZoneId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

