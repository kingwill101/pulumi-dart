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
    pulumi.Output<String>? alarmContactGroupName,
    pulumi.Output<List<String>>? contacts,
    pulumi.Output<String>? describe,
    pulumi.Output<bool>? enableSubscribed,
  }) :
      alarmContactGroupName = pulumi.Input.asOptionalInput<String>(alarmContactGroupName),
      contacts = pulumi.Input.asOptionalInput<List<String>>(contacts),
      describe = pulumi.Input.asOptionalInput<String>(describe),
      enableSubscribed = pulumi.Input.asOptionalInput<bool>(enableSubscribed);

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
      alarmContactGroupName: map['alarmContactGroupName'] == null ? null : pulumi.Output.create<String>(map['alarmContactGroupName'] as String),
      contacts: map['contacts'] == null ? null : pulumi.Output.create<List<String>>((map['contacts'] as List).cast<String>()),
      describe: map['describe'] == null ? null : pulumi.Output.create<String>(map['describe'] as String),
      enableSubscribed: map['enableSubscribed'] == null ? null : pulumi.Output.create<bool>(map['enableSubscribed'] as bool),
    );
  }
}

