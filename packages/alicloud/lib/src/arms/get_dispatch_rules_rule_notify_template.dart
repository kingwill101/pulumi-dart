// ignore_for_file: unused_element, unnecessary_cast


class GetDispatchRulesRuleNotifyTemplate {
  /// The content of the email.
  final String emailContent;
  /// The content of the email.
  final String emailRecoverContent;
  /// The title of the email.
  final String emailRecoverTitle;
  /// The title of the email.
  final String emailTitle;
  /// The content of the robot.
  final String robotContent;
  /// The content of the SMS.
  final String smsContent;
  /// The content of the SMS.
  final String smsRecoverContent;
  /// The content of the TTS.
  final String ttsContent;
  /// The content of the TTS.
  final String ttsRecoverContent;

  /// Creates a new [GetDispatchRulesRuleNotifyTemplate].
  /// [emailContent] The content of the email.
  /// [emailRecoverContent] The content of the email.
  /// [emailRecoverTitle] The title of the email.
  /// [emailTitle] The title of the email.
  /// [robotContent] The content of the robot.
  /// [smsContent] The content of the SMS.
  /// [smsRecoverContent] The content of the SMS.
  /// [ttsContent] The content of the TTS.
  /// [ttsRecoverContent] The content of the TTS.
  GetDispatchRulesRuleNotifyTemplate({
    required this.emailContent,
    required this.emailRecoverContent,
    required this.emailRecoverTitle,
    required this.emailTitle,
    required this.robotContent,
    required this.smsContent,
    required this.smsRecoverContent,
    required this.ttsContent,
    required this.ttsRecoverContent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailContent': emailContent,
      'emailRecoverContent': emailRecoverContent,
      'emailRecoverTitle': emailRecoverTitle,
      'emailTitle': emailTitle,
      'robotContent': robotContent,
      'smsContent': smsContent,
      'smsRecoverContent': smsRecoverContent,
      'ttsContent': ttsContent,
      'ttsRecoverContent': ttsRecoverContent,
    };
  }

  factory GetDispatchRulesRuleNotifyTemplate.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleNotifyTemplate(
      emailContent: map['emailContent'] as String,
      emailRecoverContent: map['emailRecoverContent'] as String,
      emailRecoverTitle: map['emailRecoverTitle'] as String,
      emailTitle: map['emailTitle'] as String,
      robotContent: map['robotContent'] as String,
      smsContent: map['smsContent'] as String,
      smsRecoverContent: map['smsRecoverContent'] as String,
      ttsContent: map['ttsContent'] as String,
      ttsRecoverContent: map['ttsRecoverContent'] as String,
    );
  }
}

