// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_alarm_contact_group_alarm_contact_group_args_doc}
/// The set of arguments for AlarmContactGroup.
/// {@endtemplate}
/// {@macro pulumi_cms_alarm_contact_group_alarm_contact_group_args_doc}
class AlarmContactGroupArgs {
  /// The name of the alarm group.
  final pulumi.Input<String> alarmContactGroupName;

  /// The name of the alert contact.
  final pulumi.Input<List<String>>? contacts;

  /// The description of the alert group.
  final pulumi.Input<String>? describe;

  /// Whether to open weekly subscription.
  final pulumi.Input<bool>? enableSubscribed;

  /// Creates a new [AlarmContactGroupArgs].
  /// [alarmContactGroupName] The name of the alarm group.
  /// [contacts] The name of the alert contact.
  /// [describe] The description of the alert group.
  /// [enableSubscribed] Whether to open weekly subscription.
  AlarmContactGroupArgs({
    required this.alarmContactGroupName,
    this.contacts,
    this.describe,
    this.enableSubscribed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmContactGroupName': alarmContactGroupName,
      'contacts': ?contacts,
      'describe': ?describe,
      'enableSubscribed': ?enableSubscribed,
    };
  }

  factory AlarmContactGroupArgs.fromMap(Map<String, dynamic> map) {
    return AlarmContactGroupArgs(
      alarmContactGroupName: pulumi.Input.fromValue(
        map['alarmContactGroupName'] as String,
      ),
      contacts: (() {
        final guardedValue = map['contacts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      describe: (() {
        final guardedValue = map['describe'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableSubscribed: (() {
        final guardedValue = map['enableSubscribed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
