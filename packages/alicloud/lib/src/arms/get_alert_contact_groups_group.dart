// ignore_for_file: unused_element, unnecessary_cast


class GetAlertContactGroupsGroup {
  /// The first ID of the resource.
  final String alertContactGroupId;
  /// The name of the resource.
  final String alertContactGroupName;
  /// contact ids.
  final List<String> contactIds;
  /// The creation time of the resource.
  final String createTime;
  /// The ID of the Alert Contact Group.
  final String id;

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
      alertContactGroupId: map['alertContactGroupId'] as String,
      alertContactGroupName: map['alertContactGroupName'] as String,
      contactIds: (map['contactIds'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      id: map['id'] as String,
    );
  }
}

