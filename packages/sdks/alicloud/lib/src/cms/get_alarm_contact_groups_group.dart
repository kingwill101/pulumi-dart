// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlarmContactGroupsGroup {
  /// The name of Alarm Contact Group.
  final pulumi.Input<String> alarmContactGroupName;

  /// The alarm contacts in the alarm group.
  final pulumi.Input<List<String>> contacts;

  /// The description of the Alarm Group.
  final pulumi.Input<String> describe;

  /// Indicates whether the alarm group subscribes to weekly reports.
  final pulumi.Input<bool> enableSubscribed;

  /// The ID of the CMS.
  final pulumi.Input<String> id;

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
      alarmContactGroupName: pulumi.Input.fromValue(
        map['alarmContactGroupName'] as String,
      ),
      contacts: pulumi.Input.fromValue(
        (map['contacts'] as List).cast<String>(),
      ),
      describe: pulumi.Input.fromValue(map['describe'] as String),
      enableSubscribed: pulumi.Input.fromValue(map['enableSubscribed'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
