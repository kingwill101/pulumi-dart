// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_gateway_hostname_binding_args_doc}
/// Arguments for getApiGatewayHostnameBinding.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_gateway_hostname_binding_args_doc}
class GetApiGatewayHostnameBindingArgs {
  /// The name of the API Management gateway.
  final pulumi.Input<String> gatewayName;
  /// Gateway hostname binding identifier. Must be unique in the scope of parent Gateway entity.
  final pulumi.Input<String> hostnameBindingName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApiGatewayHostnameBindingArgs].
  /// [gatewayName] The name of the API Management gateway.
  /// [hostnameBindingName] Gateway hostname binding identifier. Must be unique in the scope of parent Gateway entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApiGatewayHostnameBindingArgs({
    required this.gatewayName,
    required this.hostnameBindingName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'hostnameBindingName': hostnameBindingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApiGatewayHostnameBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayHostnameBindingArgs(
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      hostnameBindingName: pulumi.Input.fromValue(map['hostnameBindingName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

