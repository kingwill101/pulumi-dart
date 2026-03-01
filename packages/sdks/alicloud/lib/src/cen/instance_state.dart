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
    pulumi.Output<String>? cenInstanceName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionLevel,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cenInstanceName = pulumi.Input.asOptionalInput<String>(cenInstanceName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionLevel = pulumi.Input.asOptionalInput<String>(protectionLevel),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      cenInstanceName: map['cenInstanceName'] == null ? null : pulumi.Output.create<String>(map['cenInstanceName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionLevel: map['protectionLevel'] == null ? null : pulumi.Output.create<String>(map['protectionLevel'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

