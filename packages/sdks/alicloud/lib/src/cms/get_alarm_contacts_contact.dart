// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlarmContactsContact {
  /// The name of the alarm contact.
  final pulumi.Input<String> alarmContactName;
  /// The TradeManager ID of the alarm contact.
  final pulumi.Input<String> channelsAliim;
  /// The webhook URL of the DingTalk chatbot.
  final pulumi.Input<String> channelsDingWebHook;
  /// The email address of the alarm contact.
  final pulumi.Input<String> channelsMail;
  /// The phone number of the alarm contact.
  final pulumi.Input<String> channelsSms;
  /// Indicates whether the TradeManager ID is valid.
  final pulumi.Input<String> channelsStateAliim;
  /// Indicates whether the DingTalk chatbot is normal.
  final pulumi.Input<String> channelsStateDingWebHook;
  /// The status of the email address.
  final pulumi.Input<String> channelsStateMail;
  /// The status of the phone number.
  /// * `Lang` - The language type of the alarm.
  final pulumi.Input<String> channelsStatusSms;
  /// The alert groups to which the alarm contact is added.
  final pulumi.Input<List<String>> contactGroups;
  /// The description of the alarm contact.
  final pulumi.Input<String> describe;
  /// The ID of the alarm contact.
  final pulumi.Input<String> id;
  final pulumi.Input<String> lang;

  /// Creates a new [GetAlarmContactsContact].
  /// [alarmContactName] The name of the alarm contact.
  /// [channelsAliim] The TradeManager ID of the alarm contact.
  /// [channelsDingWebHook] The webhook URL of the DingTalk chatbot.
  /// [channelsMail] The email address of the alarm contact.
  /// [channelsSms] The phone number of the alarm contact.
  /// [channelsStateAliim] Indicates whether the TradeManager ID is valid.
  /// [channelsStateDingWebHook] Indicates whether the DingTalk chatbot is normal.
  /// [channelsStateMail] The status of the email address.
  /// [channelsStatusSms] The status of the phone number.
  /// [contactGroups] The alert groups to which the alarm contact is added.
  /// [describe] The description of the alarm contact.
  /// [id] The ID of the alarm contact.
  /// [lang] Required.
  GetAlarmContactsContact({
    required this.alarmContactName,
    required this.channelsAliim,
    required this.channelsDingWebHook,
    required this.channelsMail,
    required this.channelsSms,
    required this.channelsStateAliim,
    required this.channelsStateDingWebHook,
    required this.channelsStateMail,
    required this.channelsStatusSms,
    required this.contactGroups,
    required this.describe,
    required this.id,
    required this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmContactName': alarmContactName,
      'channelsAliim': channelsAliim,
      'channelsDingWebHook': channelsDingWebHook,
      'channelsMail': channelsMail,
      'channelsSms': channelsSms,
      'channelsStateAliim': channelsStateAliim,
      'channelsStateDingWebHook': channelsStateDingWebHook,
      'channelsStateMail': channelsStateMail,
      'channelsStatusSms': channelsStatusSms,
      'contactGroups': contactGroups,
      'describe': describe,
      'id': id,
      'lang': lang,
    };
  }

  factory GetAlarmContactsContact.fromMap(Map<String, dynamic> map) {
    return GetAlarmContactsContact(
      alarmContactName: (map['alarmContactName'] as String).input(),
      channelsAliim: (map['channelsAliim'] as String).input(),
      channelsDingWebHook: (map['channelsDingWebHook'] as String).input(),
      channelsMail: (map['channelsMail'] as String).input(),
      channelsSms: (map['channelsSms'] as String).input(),
      channelsStateAliim: (map['channelsStateAliim'] as String).input(),
      channelsStateDingWebHook: (map['channelsStateDingWebHook'] as String).input(),
      channelsStateMail: (map['channelsStateMail'] as String).input(),
      channelsStatusSms: (map['channelsStatusSms'] as String).input(),
      contactGroups: ((map['contactGroups'] as List).cast<String>()).input(),
      describe: (map['describe'] as String).input(),
      id: (map['id'] as String).input(),
      lang: (map['lang'] as String).input(),
    );
  }
}

