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
    this.configConnectionName,
    required this.gatewayName,
    this.hostnames,
    required this.resourceGroupName,
    this.sourceId,
  });

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
      configConnectionName: (() {
        final guardedValue = map['configConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      hostnames: (() {
        final guardedValue = map['hostnames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sourceId: (() {
        final guardedValue = map['sourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
