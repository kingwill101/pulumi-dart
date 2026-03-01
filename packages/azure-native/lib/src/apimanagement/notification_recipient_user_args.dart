// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_notification_recipient_user_args_doc}
/// The set of arguments for NotificationRecipientUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_notification_recipient_user_args_doc}
class NotificationRecipientUserArgs {
  /// Notification Name Identifier.
  final pulumi.Input<String> notificationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// User identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? userId;

  /// Creates a new [NotificationRecipientUserArgs].
  /// [notificationName] Notification Name Identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [userId] User identifier. Must be unique in the current API Management service instance.
  NotificationRecipientUserArgs({
    required String notificationName,
    required String resourceGroupName,
    required String serviceName,
    String? userId,
  }) :
      notificationName = pulumi.Input.asInput<String>(notificationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationName': notificationName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'userId': ?userId,
    };
  }

  factory NotificationRecipientUserArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientUserArgs(
      notificationName: map['notificationName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}

