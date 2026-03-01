// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_alarm_contact_alarm_contact_args_doc}
/// The set of arguments for AlarmContact.
/// {@endtemplate}
/// {@macro pulumi_cms_alarm_contact_alarm_contact_args_doc}
class AlarmContactArgs {
  /// The name of the alarm contact. The length should between 2 and 40 characters.
  final pulumi.Input<String> alarmContactName;
  /// The TradeManager ID of the alarm contact.
  final pulumi.Input<String>? channelsAliim;
  /// The webhook URL of the DingTalk chatbot.
  final pulumi.Input<String>? channelsDingWebHook;
  /// The email address of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  final pulumi.Input<String>? channelsMail;
  /// The phone number of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  final pulumi.Input<String>? channelsSms;
  /// The description of the alarm contact.
  final pulumi.Input<String> describe;
  /// The language type of the alarm. Valid values: `en`, `zh-cn`.
  ///
  /// > **NOTE:** Specify at least one of the following alarm notification targets: `channels_aliim`, `channels_ding_web_hook`, `channels_mail`, `channels_sms`.
  final pulumi.Input<String>? lang;

  /// Creates a new [AlarmContactArgs].
  /// [alarmContactName] The name of the alarm contact. The length should between 2 and 40 characters.
  /// [channelsAliim] The TradeManager ID of the alarm contact.
  /// [channelsDingWebHook] The webhook URL of the DingTalk chatbot.
  /// [channelsMail] The email address of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  /// [channelsSms] The phone number of the alarm contact. After you add or modify an email address, the recipient receives an email that contains an activation link. The system adds the recipient to the list of alarm contacts only after the recipient activates the email address.
  /// [describe] The description of the alarm contact.
  /// [lang] The language type of the alarm. Valid values: `en`, `zh-cn`.
  AlarmContactArgs({
    required String alarmContactName,
    String? channelsAliim,
    String? channelsDingWebHook,
    String? channelsMail,
    String? channelsSms,
    required String describe,
    String? lang,
  }) :
      alarmContactName = pulumi.Input.asInput<String>(alarmContactName),
      channelsAliim = pulumi.Input.asOptionalInput<String>(channelsAliim),
      channelsDingWebHook = pulumi.Input.asOptionalInput<String>(channelsDingWebHook),
      channelsMail = pulumi.Input.asOptionalInput<String>(channelsMail),
      channelsSms = pulumi.Input.asOptionalInput<String>(channelsSms),
      describe = pulumi.Input.asInput<String>(describe),
      lang = pulumi.Input.asOptionalInput<String>(lang);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmContactName': alarmContactName,
      'channelsAliim': ?channelsAliim,
      'channelsDingWebHook': ?channelsDingWebHook,
      'channelsMail': ?channelsMail,
      'channelsSms': ?channelsSms,
      'describe': describe,
      'lang': ?lang,
    };
  }

  factory AlarmContactArgs.fromMap(Map<String, dynamic> map) {
    return AlarmContactArgs(
      alarmContactName: map['alarmContactName'] as String,
      channelsAliim: map['channelsAliim'] == null ? null : map['channelsAliim'] as String,
      channelsDingWebHook: map['channelsDingWebHook'] == null ? null : map['channelsDingWebHook'] as String,
      channelsMail: map['channelsMail'] == null ? null : map['channelsMail'] as String,
      channelsSms: map['channelsSms'] == null ? null : map['channelsSms'] as String,
      describe: map['describe'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
    );
  }
}

