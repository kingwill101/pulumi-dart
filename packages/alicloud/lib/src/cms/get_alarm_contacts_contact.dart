// ignore_for_file: unused_element, unnecessary_cast


class GetAlarmContactsContact {
  /// The name of the alarm contact.
  final String alarmContactName;
  /// The TradeManager ID of the alarm contact.
  final String channelsAliim;
  /// The webhook URL of the DingTalk chatbot.
  final String channelsDingWebHook;
  /// The email address of the alarm contact.
  final String channelsMail;
  /// The phone number of the alarm contact.
  final String channelsSms;
  /// Indicates whether the TradeManager ID is valid.
  final String channelsStateAliim;
  /// Indicates whether the DingTalk chatbot is normal.
  final String channelsStateDingWebHook;
  /// The status of the email address.
  final String channelsStateMail;
  /// The status of the phone number.
  /// * `Lang` - The language type of the alarm.
  final String channelsStatusSms;
  /// The alert groups to which the alarm contact is added.
  final List<String> contactGroups;
  /// The description of the alarm contact.
  final String describe;
  /// The ID of the alarm contact.
  final String id;
  final String lang;

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
      alarmContactName: map['alarmContactName'] as String,
      channelsAliim: map['channelsAliim'] as String,
      channelsDingWebHook: map['channelsDingWebHook'] as String,
      channelsMail: map['channelsMail'] as String,
      channelsSms: map['channelsSms'] as String,
      channelsStateAliim: map['channelsStateAliim'] as String,
      channelsStateDingWebHook: map['channelsStateDingWebHook'] as String,
      channelsStateMail: map['channelsStateMail'] as String,
      channelsStatusSms: map['channelsStatusSms'] as String,
      contactGroups: (map['contactGroups'] as List).cast<String>(),
      describe: map['describe'] as String,
      id: map['id'] as String,
      lang: map['lang'] as String,
    );
  }
}

