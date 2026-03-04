// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DispatchRuleNotifyTemplate {
  /// The content of the email notification.
  final pulumi.Input<String> emailContent;

  /// The content of the email notification for restored alerts.
  final pulumi.Input<String> emailRecoverContent;

  /// The title of the email notification for restored alerts.
  final pulumi.Input<String> emailRecoverTitle;

  /// The title of the email notification.
  final pulumi.Input<String> emailTitle;

  /// The content of the robot notification.
  final pulumi.Input<String> robotContent;

  /// The content of the SMS notification.
  final pulumi.Input<String> smsContent;

  /// The content of the SMS notification for restored alerts.
  final pulumi.Input<String> smsRecoverContent;

  /// The content of the TTS notification.
  final pulumi.Input<String> ttsContent;

  /// The content of the TTS notification for restored alerts.
  final pulumi.Input<String> ttsRecoverContent;

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
      emailContent: pulumi.Input.fromValue(map['emailContent'] as String),
      emailRecoverContent: pulumi.Input.fromValue(
        map['emailRecoverContent'] as String,
      ),
      emailRecoverTitle: pulumi.Input.fromValue(
        map['emailRecoverTitle'] as String,
      ),
      emailTitle: pulumi.Input.fromValue(map['emailTitle'] as String),
      robotContent: pulumi.Input.fromValue(map['robotContent'] as String),
      smsContent: pulumi.Input.fromValue(map['smsContent'] as String),
      smsRecoverContent: pulumi.Input.fromValue(
        map['smsRecoverContent'] as String,
      ),
      ttsContent: pulumi.Input.fromValue(map['ttsContent'] as String),
      ttsRecoverContent: pulumi.Input.fromValue(
        map['ttsRecoverContent'] as String,
      ),
    );
  }
}
