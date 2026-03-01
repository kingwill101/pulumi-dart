// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_get_notification_hub_pns_credentials_args_doc}
/// Arguments for getNotificationHubPnsCredentials.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_get_notification_hub_pns_credentials_args_doc}
class GetNotificationHubPnsCredentialsArgs {
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String> notificationHubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNotificationHubPnsCredentialsArgs].
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNotificationHubPnsCredentialsArgs({
    required String namespaceName,
    required String notificationHubName,
    required String resourceGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asInput<String>(notificationHubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotificationHubPnsCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationHubPnsCredentialsArgs(
      namespaceName: map['namespaceName'] as String,
      notificationHubName: map['notificationHubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

