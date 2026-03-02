// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertContactGroupsGroup {
  /// The first ID of the resource.
  final pulumi.Input<String> alertContactGroupId;
  /// The name of the resource.
  final pulumi.Input<String> alertContactGroupName;
  /// contact ids.
  final pulumi.Input<List<String>> contactIds;
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The ID of the Alert Contact Group.
  final pulumi.Input<String> id;

  /// Creates a new [GetAlertContactGroupsGroup].
  /// [alertContactGroupId] The first ID of the resource.
  /// [alertContactGroupName] The name of the resource.
  /// [contactIds] contact ids.
  /// [createTime] The creation time of the resource.
  /// [id] The ID of the Alert Contact Group.
  GetAlertContactGroupsGroup({
    required this.alertContactGroupId,
    required this.alertContactGroupName,
    required this.contactIds,
    required this.createTime,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContactGroupId': alertContactGroupId,
      'alertContactGroupName': alertContactGroupName,
      'contactIds': contactIds,
      'createTime': createTime,
      'id': id,
    };
  }

  factory GetAlertContactGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAlertContactGroupsGroup(
      alertContactGroupId: (map['alertContactGroupId'] as String).input(),
      alertContactGroupName: (map['alertContactGroupName'] as String).input(),
      contactIds: ((map['contactIds'] as List).cast<String>()).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

