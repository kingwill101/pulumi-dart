// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Email notification of an autoscale event.
class EmailNotificationResponse {
  /// the custom e-mails list. This value can be null or empty, in which case this attribute will be ignored.
  final pulumi.Input<List<String>>? customEmails;
  /// a value indicating whether to send email to subscription administrator.
  final pulumi.Input<bool>? sendToSubscriptionAdministrator;
  /// a value indicating whether to send email to subscription co-administrators.
  final pulumi.Input<bool>? sendToSubscriptionCoAdministrators;

  /// Creates a new [EmailNotificationResponse].
  /// [customEmails] the custom e-mails list. This value can be null or empty, in which case this attribute will be ignored.
  /// [sendToSubscriptionAdministrator] a value indicating whether to send email to subscription administrator.
  /// [sendToSubscriptionCoAdministrators] a value indicating whether to send email to subscription co-administrators.
  EmailNotificationResponse({
    this.customEmails,
    this.sendToSubscriptionAdministrator,
    this.sendToSubscriptionCoAdministrators,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEmails': ?customEmails,
      'sendToSubscriptionAdministrator': ?sendToSubscriptionAdministrator,
      'sendToSubscriptionCoAdministrators': ?sendToSubscriptionCoAdministrators,
    };
  }

  factory EmailNotificationResponse.fromMap(Map<String, dynamic> map) {
    return EmailNotificationResponse(
      customEmails: (() { final guardedValue = map['customEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sendToSubscriptionAdministrator: (() { final guardedValue = map['sendToSubscriptionAdministrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sendToSubscriptionCoAdministrators: (() { final guardedValue = map['sendToSubscriptionCoAdministrators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

