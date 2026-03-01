// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_list_notification_hub_keys_args_doc}
/// Arguments for listNotificationHubKeys.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_list_notification_hub_keys_args_doc}
class ListNotificationHubKeysArgs {
  /// Authorization Rule Name
  final pulumi.Input<String> authorizationRuleName;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String> notificationHubName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListNotificationHubKeysArgs].
  /// [authorizationRuleName] Authorization Rule Name
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListNotificationHubKeysArgs({
    required String authorizationRuleName,
    required String namespaceName,
    required String notificationHubName,
    required String resourceGroupName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asInput<String>(notificationHubName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'notificationHubName': notificationHubName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListNotificationHubKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListNotificationHubKeysArgs(
      authorizationRuleName: map['authorizationRuleName'] as String,
      namespaceName: map['namespaceName'] as String,
      notificationHubName: map['notificationHubName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

