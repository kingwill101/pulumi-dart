// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail {
  /// The email HTML body.
  final pulumi.Input<String> htmlBody;
  /// The email subject.
  final pulumi.Input<String> subject;
  /// The email text body.
  final pulumi.Input<String> textBody;

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
    return <String, dynamic>{
      'htmlBody': htmlBody,
      'subject': subject,
      'textBody': textBody,
    };
  }

  factory RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail.fromMap(Map<String, dynamic> map) {
    return RiskConfigurationAccountTakeoverRiskConfigurationNotifyConfigurationNoActionEmail(
      htmlBody: (map['htmlBody'] as String).input(),
      subject: (map['subject'] as String).input(),
      textBody: (map['textBody'] as String).input(),
    );
  }
}

