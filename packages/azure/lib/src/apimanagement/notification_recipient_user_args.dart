// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_notification_recipient_user_notification_recipient_user_args_doc}
/// The set of arguments for NotificationRecipientUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_notification_recipient_user_notification_recipient_user_args_doc}
class NotificationRecipientUserArgs {
  /// The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  final pulumi.Input<String> apiManagementId;
  /// The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  final pulumi.Input<String> notificationType;
  /// The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  final pulumi.Input<String> userId;

  /// Creates a new [NotificationRecipientUserArgs].
  /// [apiManagementId] The ID of the API Management Service from which to create this Notification Recipient User. Changing this forces a new API Management Notification Recipient User to be created.
  /// [notificationType] The Notification Name to be received. Changing this forces a new API Management Notification Recipient User to be created. Possible values are `AccountClosedPublisher`, `BCC`, `NewApplicationNotificationMessage`, `NewIssuePublisherNotificationMessage`, `PurchasePublisherNotificationMessage`, `QuotaLimitApproachingPublisherNotificationMessage`, and `RequestPublisherNotificationMessage`.
  /// [userId] The recipient user ID. Changing this forces a new API Management Notification Recipient User to be created.
  NotificationRecipientUserArgs({
    required String apiManagementId,
    required String notificationType,
    required String userId,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      notificationType = pulumi.Input.asInput<String>(notificationType),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'notificationType': notificationType,
      'userId': userId,
    };
  }

  factory NotificationRecipientUserArgs.fromMap(Map<String, dynamic> map) {
    return NotificationRecipientUserArgs(
      apiManagementId: map['apiManagementId'] as String,
      notificationType: map['notificationType'] as String,
      userId: map['userId'] as String,
    );
  }
}

