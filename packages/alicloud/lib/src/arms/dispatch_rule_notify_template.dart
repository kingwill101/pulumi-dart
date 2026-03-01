// ignore_for_file: unused_element, unnecessary_cast


class DispatchRuleNotifyTemplate {
  /// The content of the email notification.
  final String emailContent;
  /// The content of the email notification for restored alerts.
  final String emailRecoverContent;
  /// The title of the email notification for restored alerts.
  final String emailRecoverTitle;
  /// The title of the email notification.
  final String emailTitle;
  /// The content of the robot notification.
  final String robotContent;
  /// The content of the SMS notification.
  final String smsContent;
  /// The content of the SMS notification for restored alerts.
  final String smsRecoverContent;
  /// The content of the TTS notification.
  final String ttsContent;
  /// The content of the TTS notification for restored alerts.
  final String ttsRecoverContent;

  /// Creates a new [DispatchRuleNotifyTemplate].
  /// [emailContent] The content of the email notification.
  /// [emailRecoverContent] The content of the email notification for restored alerts.
  /// [emailRecoverTitle] The title of the email notification for restored alerts.
  /// [emailTitle] The title of the email notification.
  /// [robotContent] The content of the robot notification.
  /// [smsContent] The content of the SMS notification.
  /// [smsRecoverContent] The content of the SMS notification for restored alerts.
  /// [ttsContent] The content of the TTS notification.
  /// [ttsRecoverContent] The content of the TTS notification for restored alerts.
  DispatchRuleNotifyTemplate({
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

  factory DispatchRuleNotifyTemplate.fromMap(Map<String, dynamic> map) {
    return DispatchRuleNotifyTemplate(
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

