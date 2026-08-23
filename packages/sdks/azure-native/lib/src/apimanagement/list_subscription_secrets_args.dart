// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_subscription_secrets_args_doc}
/// Arguments for listSubscriptionSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_subscription_secrets_args_doc}
class ListSubscriptionSecretsArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  final pulumi.Input<String> sid;

  /// Creates a new [ListSubscriptionSecretsArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [sid] Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  const ListSubscriptionSecretsArgs({
    required this.resourceGroupName,
    required this.serviceName,
    required this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sid': sid,
    };
  }

  factory ListSubscriptionSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListSubscriptionSecretsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      sid: pulumi.Input.fromValue(map['sid'] as String),
    );
  }
}
