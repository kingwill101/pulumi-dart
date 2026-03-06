// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMonitorGroupsGroup {
  /// The URL of the Kubernetes cluster from which the application group is synchronized.
  final pulumi.Input<String> bindUrl;
  /// The list of  alert groups that receive alert notifications for the application group.
  final pulumi.Input<List<String>> contactGroups;
  /// The ID of the tag rule.
  final pulumi.Input<String> dynamicTagRuleId;
  /// The time when the application group was created.
  final pulumi.Input<int> gmtCreate;
  /// The time when the application group was modified.
  final pulumi.Input<int> gmtModified;
  /// The ID of the application group.
  final pulumi.Input<String> groupId;
  /// The ID of the Monitor Group.
  final pulumi.Input<String> id;
  /// The name of the application group.
  final pulumi.Input<String> monitorGroupName;
  /// The ID of the Alibaba Cloud service.
  final pulumi.Input<String> serviceId;
  /// A map of tags assigned to the Cms Monitor Group.
  final pulumi.Input<Map<String, String>> tags;
  /// The alert templates applied to the application group.
  final pulumi.Input<List<String>> templateIds;
  /// The type of the application group.
  final pulumi.Input<String> type;

  /// Creates a new [GetMonitorGroupsGroup].
  /// [bindUrl] The URL of the Kubernetes cluster from which the application group is synchronized.
  /// [contactGroups] The list of  alert groups that receive alert notifications for the application group.
  /// [dynamicTagRuleId] The ID of the tag rule.
  /// [gmtCreate] The time when the application group was created.
  /// [gmtModified] The time when the application group was modified.
  /// [groupId] The ID of the application group.
  /// [id] The ID of the Monitor Group.
  /// [monitorGroupName] The name of the application group.
  /// [serviceId] The ID of the Alibaba Cloud service.
  /// [tags] A map of tags assigned to the Cms Monitor Group.
  /// [templateIds] The alert templates applied to the application group.
  /// [type] The type of the application group.
  const GetMonitorGroupsGroup({
    required this.bindUrl,
    required this.contactGroups,
    required this.dynamicTagRuleId,
    required this.gmtCreate,
    required this.gmtModified,
    required this.groupId,
    required this.id,
    required this.monitorGroupName,
    required this.serviceId,
    required this.tags,
    required this.templateIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindUrl': bindUrl,
      'contactGroups': contactGroups,
      'dynamicTagRuleId': dynamicTagRuleId,
      'gmtCreate': gmtCreate,
      'gmtModified': gmtModified,
      'groupId': groupId,
      'id': id,
      'monitorGroupName': monitorGroupName,
      'serviceId': serviceId,
      'tags': tags,
      'templateIds': templateIds,
      'type': type,
    };
  }

  factory GetMonitorGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetMonitorGroupsGroup(
      bindUrl: pulumi.Input.fromValue(map['bindUrl'] as String),
      contactGroups: pulumi.Input.fromValue((map['contactGroups'] as List).cast<String>()),
      dynamicTagRuleId: pulumi.Input.fromValue(map['dynamicTagRuleId'] as String),
      gmtCreate: pulumi.Input.fromValue(map['gmtCreate'] as int),
      gmtModified: pulumi.Input.fromValue(map['gmtModified'] as int),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      monitorGroupName: pulumi.Input.fromValue(map['monitorGroupName'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      templateIds: pulumi.Input.fromValue((map['templateIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

