// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_client_application_secrets_args_doc}
/// Arguments for listClientApplicationSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_client_application_secrets_args_doc}
class ListClientApplicationSecretsArgs {
  /// Client Application identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> clientApplicationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListClientApplicationSecretsArgs].
  /// [clientApplicationId] Client Application identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  const ListClientApplicationSecretsArgs({
    required this.clientApplicationId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientApplicationId': clientApplicationId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListClientApplicationSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListClientApplicationSecretsArgs(
      clientApplicationId: pulumi.Input.fromValue(map['clientApplicationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
