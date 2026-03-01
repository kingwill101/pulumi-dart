// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_get_virtual_network_gateway_args_doc}
/// Arguments for getVirtualNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_get_virtual_network_gateway_args_doc}
class GetVirtualNetworkGatewayArgs {
  /// Specifies the name of the Virtual Network Gateway.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Virtual Network Gateway is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualNetworkGatewayArgs].
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [resourceGroupName] Specifies the name of the resource group the Virtual Network Gateway is located in.
  GetVirtualNetworkGatewayArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

