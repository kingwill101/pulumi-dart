// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MonitorGroup resources.
class MonitorGroupState {
  /// The alert group to which alert notifications will be sent.
  final pulumi.Input<List<String>>? contactGroups;
  /// The name of the application group.
  final pulumi.Input<String>? monitorGroupName;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the resource group.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MonitorGroupState].
  /// [contactGroups] The alert group to which alert notifications will be sent.
  /// [monitorGroupName] The name of the application group.
  /// [resourceGroupId] The ID of the resource group.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  MonitorGroupState({
    pulumi.Output<List<String>>? contactGroups,
    pulumi.Output<String>? monitorGroupName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      contactGroups = pulumi.Input.asOptionalInput<List<String>>(contactGroups),
      monitorGroupName = pulumi.Input.asOptionalInput<String>(monitorGroupName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactGroups': ?contactGroups,
      'monitorGroupName': ?monitorGroupName,
      'resourceGroupId': ?resourceGroupId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MonitorGroupState.fromMap(Map<String, dynamic> map) {
    return MonitorGroupState(
      contactGroups: map['contactGroups'] == null ? null : pulumi.Output.create<List<String>>((map['contactGroups'] as List).cast<String>()),
      monitorGroupName: map['monitorGroupName'] == null ? null : pulumi.Output.create<String>(map['monitorGroupName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

