// ignore_for_file: unused_element, unnecessary_cast

class RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail {
  /// The email HTML body.
  final String htmlBody;

  /// The email subject.
  final String subject;

  /// The email text body.
  final String textBody;

  /// Creates a new [RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail].
  /// [htmlBody] The email HTML body.
  /// [subject] The email subject.
  /// [textBody] The email text body.
  RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail({
    required this.htmlBody,
    required this.subject,
    required this.textBody,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['htmlBody'] = htmlBody;
    map['subject'] = subject;
    map['textBody'] = textBody;
    return map;
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail.fromMap(
      Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail(
      htmlBody: map['htmlBody'] as String,
      subject: map['subject'] as String,
      textBody: map['textBody'] as String,
    );
  }
}
