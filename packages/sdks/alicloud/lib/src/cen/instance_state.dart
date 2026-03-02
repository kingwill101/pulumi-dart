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
  InstanceState({
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
      cenInstanceName: map['cenInstanceName'] == null ? null : (map['cenInstanceName']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protectionLevel: map['protectionLevel'] == null ? null : (map['protectionLevel']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

