// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_gateway_args_doc}
/// Arguments for getApiGateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_gateway_args_doc}
class GetApiGatewayArgs {
  /// The name of the API Management gateway.
  final pulumi.Input<String> gatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiGatewayArgs].
  /// [gatewayName] The name of the API Management gateway.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetApiGatewayArgs({
    required this.gatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApiGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayArgs(
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

