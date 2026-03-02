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
    this.contactGroups,
    this.monitorGroupName,
    this.resourceGroupId,
    this.resourceGroupName,
    this.tags,
  });

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
      contactGroups: map['contactGroups'] == null ? null : ((map['contactGroups'] as List).cast<String>()).input(),
      monitorGroupName: map['monitorGroupName'] == null ? null : (map['monitorGroupName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

