// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_notification_recipient_email_args_doc}
/// The set of arguments for NotificationRecipientEmail.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_notification_recipient_email_args_doc}
class NotificationRecipientEmailArgs {
  /// Email identifier.
  final pulumi.Input<String>? email;
  /// Notification Name Identifier.
  final pulumi.Input<String> notificationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [NotificationRecipientEmailArgs].
  /// [email] Email identifier.
  /// [notificationName] Notification Name Identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  NotificationRecipientEmailArgs({
    this.email,
    required this.notificationName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'notificationName': notificationName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory NotificationRecipientEmailArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientEmailArgs(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      notificationName: (map['notificationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

