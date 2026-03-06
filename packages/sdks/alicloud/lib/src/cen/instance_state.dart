// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The name of the CEN instance.
  final pulumi.Input<String>? cenInstanceName;
  /// The time when the CEN instance was created.
  final pulumi.Input<String>? createTime;
  /// The description of the CEN instance.
  final pulumi.Input<String>? description;
  /// . Field 'name' has been deprecated from provider version 1.246.0. New field 'cen_instance_name' instead.
  final pulumi.Input<String>? name;
  /// The level of CIDR block overlapping. Valid values:  REDUCED: Overlapped CIDR blocks are allowed. However, the overlapped CIDR blocks cannot be the same.
  final pulumi.Input<String>? protectionLevel;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The state of the CEN instance.   Creating: The CEN instance is being created. Active: The CEN instance is running. Deleting: The CEN instance is being deleted.
  final pulumi.Input<String>? status;
  /// The tags of the CEN instance.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceState].
  /// [cenInstanceName] The name of the CEN instance.
  /// [createTime] The time when the CEN instance was created.
  /// [description] The description of the CEN instance.
  /// [name] . Field 'name' has been deprecated from provider version 1.246.0. New field 'cen_instance_name' instead.
  /// [protectionLevel] The level of CIDR block overlapping. Valid values:  REDUCED: Overlapped CIDR blocks are allowed. However, the overlapped CIDR blocks cannot be the same.
  /// [resourceGroupId] The ID of the resource group
  /// [status] The state of the CEN instance.   Creating: The CEN instance is being created. Active: The CEN instance is running. Deleting: The CEN instance is being deleted.
  /// [tags] The tags of the CEN instance.
  const InstanceState({
    this.cenInstanceName,
    this.createTime,
    this.description,
    this.name,
    this.protectionLevel,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenInstanceName': ?cenInstanceName,
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      cenInstanceName: (() { final guardedValue = map['cenInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

