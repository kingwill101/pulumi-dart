// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_gateway_debug_credentials_args_doc}
/// Arguments for listGatewayDebugCredentials.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_gateway_debug_credentials_args_doc}
class ListGatewayDebugCredentialsArgs {
  /// Full resource Id of an API.
  final pulumi.Input<String> apiId;

  /// Credentials expiration in ISO8601 format. Maximum duration of the credentials is PT1H. When property is not specified, them value PT1H is used.
  final pulumi.Input<String>? credentialsExpireAfter;

  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;

  /// Purposes of debug credential.
  final pulumi.Input<List<String>> purposes;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListGatewayDebugCredentialsArgs].
  /// [apiId] Full resource Id of an API.
  /// [credentialsExpireAfter] Credentials expiration in ISO8601 format. Maximum duration of the credentials is PT1H. When property is not specified, them value PT1H is used.
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [purposes] Purposes of debug credential.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ListGatewayDebugCredentialsArgs({
    required this.apiId,
    this.credentialsExpireAfter,
    required this.gatewayId,
    required this.purposes,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'credentialsExpireAfter': ?credentialsExpireAfter,
      'gatewayId': gatewayId,
      'purposes': purposes,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListGatewayDebugCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListGatewayDebugCredentialsArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      credentialsExpireAfter: (() {
        final guardedValue = map['credentialsExpireAfter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      purposes: pulumi.Input.fromValue(
        (map['purposes'] as List).cast<String>(),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
