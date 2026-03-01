// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_local_network_gateway_get_local_network_gateway_args_doc}
/// Arguments for getLocalNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_local_network_gateway_get_local_network_gateway_args_doc}
class GetLocalNetworkGatewayArgs {
  /// The name of the Local Network Gateway.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Local Network Gateway exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalNetworkGatewayArgs].
  /// [name] The name of the Local Network Gateway.
  /// [resourceGroupName] The name of the Resource Group where the Local Network Gateway exists.
  GetLocalNetworkGatewayArgs({
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

  factory GetLocalNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalNetworkGatewayArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

