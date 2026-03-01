// ignore_for_file: unused_element, unnecessary_cast


class GetAlarmContactGroupsGroup {
  /// The name of Alarm Contact Group.
  final String alarmContactGroupName;
  /// The alarm contacts in the alarm group.
  final List<String> contacts;
  /// The description of the Alarm Group.
  final String describe;
  /// Indicates whether the alarm group subscribes to weekly reports.
  final bool enableSubscribed;
  /// The ID of the CMS.
  final String id;

  /// Creates a new [GetAlarmContactGroupsGroup].
  /// [alarmContactGroupName] The name of Alarm Contact Group.
  /// [contacts] The alarm contacts in the alarm group.
  /// [describe] The description of the Alarm Group.
  /// [enableSubscribed] Indicates whether the alarm group subscribes to weekly reports.
  /// [id] The ID of the CMS.
  GetAlarmContactGroupsGroup({
    required this.alarmContactGroupName,
    required this.contacts,
    required this.describe,
    required this.enableSubscribed,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmContactGroupName': alarmContactGroupName,
      'contacts': contacts,
      'describe': describe,
      'enableSubscribed': enableSubscribed,
      'id': id,
    };
  }

  factory GetAlarmContactGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetAlarmContactGroupsGroup(
      alarmContactGroupName: map['alarmContactGroupName'] as String,
      contacts: (map['contacts'] as List).cast<String>(),
      describe: map['describe'] as String,
      enableSubscribed: map['enableSubscribed'] as bool,
      id: map['id'] as String,
    );
  }
}

