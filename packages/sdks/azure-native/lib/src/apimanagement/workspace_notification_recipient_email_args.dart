// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_notification_recipient_email_args_doc}
/// The set of arguments for WorkspaceNotificationRecipientEmail.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_notification_recipient_email_args_doc}
class WorkspaceNotificationRecipientEmailArgs {
  /// Email identifier.
  final pulumi.Input<String>? email;
  /// Notification Name Identifier.
  final pulumi.Input<String> notificationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceNotificationRecipientEmailArgs].
  /// [email] Email identifier.
  /// [notificationName] Notification Name Identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceNotificationRecipientEmailArgs({
    this.email,
    required this.notificationName,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'notificationName': notificationName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceNotificationRecipientEmailArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceNotificationRecipientEmailArgs(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      notificationName: (map['notificationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

