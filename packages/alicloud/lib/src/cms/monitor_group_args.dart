// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_monitor_group_monitor_group_args_doc}
/// The set of arguments for MonitorGroup.
/// {@endtemplate}
/// {@macro pulumi_cms_monitor_group_monitor_group_args_doc}
class MonitorGroupArgs {
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

  /// Creates a new [MonitorGroupArgs].
  /// [contactGroups] The alert group to which alert notifications will be sent.
  /// [monitorGroupName] The name of the application group.
  /// [resourceGroupId] The ID of the resource group.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  MonitorGroupArgs({
    List<String>? contactGroups,
    String? monitorGroupName,
    String? resourceGroupId,
    String? resourceGroupName,
    Map<String, String>? tags,
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

  factory MonitorGroupArgs.fromMap(Map<String, dynamic> map) {
    return MonitorGroupArgs(
      contactGroups: map['contactGroups'] == null ? null : (map['contactGroups'] as List).cast<String>(),
      monitorGroupName: map['monitorGroupName'] == null ? null : map['monitorGroupName'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

