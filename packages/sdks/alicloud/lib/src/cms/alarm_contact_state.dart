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
  /// &gt; **NOTE:** Specify at least one of the following alarm notification targets: `channels_aliim`, `channels_ding_web_hook`, `channels_mail`, `channels_sms`.
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
      alarmContactName: (() { final guardedValue = map['alarmContactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelsAliim: (() { final guardedValue = map['channelsAliim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelsDingWebHook: (() { final guardedValue = map['channelsDingWebHook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelsMail: (() { final guardedValue = map['channelsMail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelsSms: (() { final guardedValue = map['channelsSms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      describe: (() { final guardedValue = map['describe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

