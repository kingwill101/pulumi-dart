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
    pulumi.Output<String>? alarmContactName,
    pulumi.Output<String>? channelsAliim,
    pulumi.Output<String>? channelsDingWebHook,
    pulumi.Output<String>? channelsMail,
    pulumi.Output<String>? channelsSms,
    pulumi.Output<String>? describe,
    pulumi.Output<String>? lang,
  }) :
      alarmContactName = pulumi.Input.asOptionalInput<String>(alarmContactName),
      channelsAliim = pulumi.Input.asOptionalInput<String>(channelsAliim),
      channelsDingWebHook = pulumi.Input.asOptionalInput<String>(channelsDingWebHook),
      channelsMail = pulumi.Input.asOptionalInput<String>(channelsMail),
      channelsSms = pulumi.Input.asOptionalInput<String>(channelsSms),
      describe = pulumi.Input.asOptionalInput<String>(describe),
      lang = pulumi.Input.asOptionalInput<String>(lang);

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
      alarmContactName: map['alarmContactName'] == null ? null : pulumi.Output.create<String>(map['alarmContactName'] as String),
      channelsAliim: map['channelsAliim'] == null ? null : pulumi.Output.create<String>(map['channelsAliim'] as String),
      channelsDingWebHook: map['channelsDingWebHook'] == null ? null : pulumi.Output.create<String>(map['channelsDingWebHook'] as String),
      channelsMail: map['channelsMail'] == null ? null : pulumi.Output.create<String>(map['channelsMail'] as String),
      channelsSms: map['channelsSms'] == null ? null : pulumi.Output.create<String>(map['channelsSms'] as String),
      describe: map['describe'] == null ? null : pulumi.Output.create<String>(map['describe'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
    );
  }
}

