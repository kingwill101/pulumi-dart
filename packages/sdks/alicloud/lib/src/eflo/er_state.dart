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
  const ErState({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      erName: (() { final guardedValue = map['erName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterZoneId: (() { final guardedValue = map['masterZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

