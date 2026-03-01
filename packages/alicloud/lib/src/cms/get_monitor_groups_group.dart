// ignore_for_file: unused_element, unnecessary_cast


class GetMonitorGroupsGroup {
  /// The URL of the Kubernetes cluster from which the application group is synchronized.
  final String bindUrl;
  /// The list of  alert groups that receive alert notifications for the application group.
  final List<String> contactGroups;
  /// The ID of the tag rule.
  final String dynamicTagRuleId;
  /// The time when the application group was created.
  final int gmtCreate;
  /// The time when the application group was modified.
  final int gmtModified;
  /// The ID of the application group.
  final String groupId;
  /// The ID of the Monitor Group.
  final String id;
  /// The name of the application group.
  final String monitorGroupName;
  /// The ID of the Alibaba Cloud service.
  final String serviceId;
  /// A map of tags assigned to the Cms Monitor Group.
  final Map<String, String> tags;
  /// The alert templates applied to the application group.
  final List<String> templateIds;
  /// The type of the application group.
  final String type;

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
  GetMonitorGroupsGroup({
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
      bindUrl: map['bindUrl'] as String,
      contactGroups: (map['contactGroups'] as List).cast<String>(),
      dynamicTagRuleId: map['dynamicTagRuleId'] as String,
      gmtCreate: map['gmtCreate'] as int,
      gmtModified: map['gmtModified'] as int,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      monitorGroupName: map['monitorGroupName'] as String,
      serviceId: map['serviceId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateIds: (map['templateIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

