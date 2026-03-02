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
      alarmContactGroupName: (map['alarmContactGroupName'] as String).input(),
      contacts: ((map['contacts'] as List).cast<String>()).input(),
      describe: (map['describe'] as String).input(),
      enableSubscribed: (map['enableSubscribed'] as bool).input(),
      id: (map['id'] as String).input(),
    );
  }
}

