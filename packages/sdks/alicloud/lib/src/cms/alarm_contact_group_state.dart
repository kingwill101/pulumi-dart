// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlarmContactGroup resources.
class AlarmContactGroupState {
  /// The name of the alarm group.
  final pulumi.Input<String>? alarmContactGroupName;
  /// The name of the alert contact.
  final pulumi.Input<List<String>>? contacts;
  /// The description of the alert group.
  final pulumi.Input<String>? describe;
  /// Whether to open weekly subscription.
  final pulumi.Input<bool>? enableSubscribed;

  /// Creates a new [AlarmContactGroupState].
  /// [alarmContactGroupName] The name of the alarm group.
  /// [contacts] The name of the alert contact.
  /// [describe] The description of the alert group.
  /// [enableSubscribed] Whether to open weekly subscription.
  AlarmContactGroupState({
    this.alarmContactGroupName,
    this.contacts,
    this.describe,
    this.enableSubscribed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmContactGroupName': ?alarmContactGroupName,
      'contacts': ?contacts,
      'describe': ?describe,
      'enableSubscribed': ?enableSubscribed,
    };
  }

  factory AlarmContactGroupState.fromMap(Map<String, dynamic> map) {
    return AlarmContactGroupState(
      alarmContactGroupName: map['alarmContactGroupName'] == null ? null : (map['alarmContactGroupName'] as String).input(),
      contacts: map['contacts'] == null ? null : ((map['contacts'] as List).cast<String>()).input(),
      describe: map['describe'] == null ? null : (map['describe'] as String).input(),
      enableSubscribed: map['enableSubscribed'] == null ? null : (map['enableSubscribed'] as bool).input(),
    );
  }
}

