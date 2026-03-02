// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlarmContact resources.
class AlarmContactState {
  /// The name of the alarm contact. The length should between 2 and 40 characters.
  final pulumi.Input<String>? alarmContactName;
  /// The TradeManager ID of the alarm contact.
  final pulumi.Input<String>? channelsAliim;
  /// The webhook URL of the DingTalk chatbot.
  final pulumi.Input<String>? channelsDingWebHook;
  /// The email address of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  final pulumi.Input<String>? channelsMail;
  /// The phone number of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  final pulumi.Input<String>? channelsSms;
  /// The description of the alarm contact.
  final pulumi.Input<String>? describe;
  /// The language type of the alarm. Valid values: `en`, `zh-cn`.
  ///
  /// > **NOTE:** Specify at least one of the following alarm notification targets: `channels_aliim`, `channels_ding_web_hook`, `channels_mail`, `channels_sms`.
  final pulumi.Input<String>? lang;

  /// Creates a new [AlarmContactState].
  /// [alarmContactName] The name of the alarm contact. The length should between 2 and 40 characters.
  /// [channelsAliim] The TradeManager ID of the alarm contact.
  /// [channelsDingWebHook] The webhook URL of the DingTalk chatbot.
  /// [channelsMail] The email address of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  /// [channelsSms] The phone number of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  /// [describe] The description of the alarm contact.
  /// [lang] The language type of the alarm. Valid values: `en`, `zh-cn`.
  AlarmContactState({
    this.alarmContactName,
    this.channelsAliim,
    this.channelsDingWebHook,
    this.channelsMail,
    this.channelsSms,
    this.describe,
    this.lang,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmContactName': ?alarmContactName,
      'channelsAliim': ?channelsAliim,
      'channelsDingWebHook': ?channelsDingWebHook,
      'channelsMail': ?channelsMail,
      'channelsSms': ?channelsSms,
      'describe': ?describe,
      'lang': ?lang,
    };
  }

  factory AlarmContactState.fromMap(Map<String, dynamic> map) {
    return AlarmContactState(
      alarmContactName: map['alarmContactName'] == null ? null : (map['alarmContactName'] as String).input(),
      channelsAliim: map['channelsAliim'] == null ? null : (map['channelsAliim'] as String).input(),
      channelsDingWebHook: map['channelsDingWebHook'] == null ? null : (map['channelsDingWebHook'] as String).input(),
      channelsMail: map['channelsMail'] == null ? null : (map['channelsMail'] as String).input(),
      channelsSms: map['channelsSms'] == null ? null : (map['channelsSms'] as String).input(),
      describe: map['describe'] == null ? null : (map['describe'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
    );
  }
}

