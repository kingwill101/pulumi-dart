// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_gateway_config_connection_args_doc}
/// Arguments for getApiGatewayConfigConnection.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_gateway_config_connection_args_doc}
class GetApiGatewayConfigConnectionArgs {
  /// The name of the API Management gateway config connection.
  final pulumi.Input<String> configConnectionName;
  /// The name of the API Management gateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiGatewayConfigConnectionArgs].
  /// [configConnectionName] The name of the API Management gateway config connection.
  /// [gatewayName] The name of the API Management gateway.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApiGatewayConfigConnectionArgs({
    required pulumi.Output<String> configConnectionName,
    required pulumi.Output<String> gatewayName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configConnectionName = pulumi.Input.asInput<String>(configConnectionName),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configConnectionName': configConnectionName,
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApiGatewayConfigConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayConfigConnectionArgs(
      configConnectionName: pulumi.Output.create<String>(map['configConnectionName'] as String),
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

