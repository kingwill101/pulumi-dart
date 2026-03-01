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
  ListSubscriptionSecretsArgs({
    required String resourceGroupName,
    required String serviceName,
    required String sid,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sid = pulumi.Input.asInput<String>(sid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sid': sid,
    };
  }

  factory ListSubscriptionSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListSubscriptionSecretsArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      sid: map['sid'] as String,
    );
  }
}

