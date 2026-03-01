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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? erName,
    pulumi.Output<String>? masterZoneId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      erName = pulumi.Input.asOptionalInput<String>(erName),
      masterZoneId = pulumi.Input.asOptionalInput<String>(masterZoneId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      erName: map['erName'] == null ? null : pulumi.Output.create<String>(map['erName'] as String),
      masterZoneId: map['masterZoneId'] == null ? null : pulumi.Output.create<String>(map['masterZoneId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

