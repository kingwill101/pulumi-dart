// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Email notification of an autoscale event.
class EmailNotification {
  /// the custom e-mails list. This value can be null or empty, in which case this attribute will be ignored.
  final pulumi.Input<List<String>>? customEmails;
  /// a value indicating whether to send email to subscription administrator.
  final pulumi.Input<bool>? sendToSubscriptionAdministrator;
  /// a value indicating whether to send email to subscription co-administrators.
  final pulumi.Input<bool>? sendToSubscriptionCoAdministrators;

  /// Creates a new [EmailNotification].
  /// [customEmails] the custom e-mails list. This value can be null or empty, in which case this attribute will be ignored.
  /// [sendToSubscriptionAdministrator] a value indicating whether to send email to subscription administrator.
  /// [sendToSubscriptionCoAdministrators] a value indicating whether to send email to subscription co-administrators.
  EmailNotification({
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

  factory EmailNotification.fromMap(Map<String, dynamic> map) {
    return EmailNotification(
      customEmails: map['customEmails'] == null ? null : ((map['customEmails']! as List).cast<String>()).input(),
      sendToSubscriptionAdministrator: map['sendToSubscriptionAdministrator'] == null ? null : (map['sendToSubscriptionAdministrator']! as bool).input(),
      sendToSubscriptionCoAdministrators: map['sendToSubscriptionCoAdministrators'] == null ? null : (map['sendToSubscriptionCoAdministrators']! as bool).input(),
    );
  }
}

