// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_gateway_config_connection_args_doc}
/// The set of arguments for ApiGatewayConfigConnection.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_gateway_config_connection_args_doc}
class ApiGatewayConfigConnectionArgs {
  /// The name of the API Management gateway config connection.
  final pulumi.Input<String>? configConnectionName;
  /// The name of the API Management gateway.
  final pulumi.Input<String> gatewayName;
  /// The hostnames of the data-plane gateway to which requests can be sent.
  final pulumi.Input<List<String>>? hostnames;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The link to the API Management service workspace.
  final pulumi.Input<String>? sourceId;

  /// Creates a new [ApiGatewayConfigConnectionArgs].
  /// [configConnectionName] The name of the API Management gateway config connection.
  /// [gatewayName] The name of the API Management gateway.
  /// [hostnames] The hostnames of the data-plane gateway to which requests can be sent.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceId] The link to the API Management service workspace.
  ApiGatewayConfigConnectionArgs({
    String? configConnectionName,
    required String gatewayName,
    List<String>? hostnames,
    required String resourceGroupName,
    String? sourceId,
  }) :
      configConnectionName = pulumi.Input.asOptionalInput<String>(configConnectionName),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      hostnames = pulumi.Input.asOptionalInput<List<String>>(hostnames),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configConnectionName': ?configConnectionName,
      'gatewayName': gatewayName,
      'hostnames': ?hostnames,
      'resourceGroupName': resourceGroupName,
      'sourceId': ?sourceId,
    };
  }

  factory ApiGatewayConfigConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ApiGatewayConfigConnectionArgs(
      configConnectionName: map['configConnectionName'] == null ? null : map['configConnectionName'] as String,
      gatewayName: map['gatewayName'] as String,
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
    );
  }
}

