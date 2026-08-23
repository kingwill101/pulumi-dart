// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_internet_gateway_args_doc}
/// Arguments for getInternetGateway.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_internet_gateway_args_doc}
class GetInternetGatewayArgs {
  /// Name of the Internet Gateway.
  final pulumi.Input<String> internetGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInternetGatewayArgs].
  /// [internetGatewayName] Name of the Internet Gateway.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetInternetGatewayArgs({
    required this.internetGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayName': internetGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInternetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetInternetGatewayArgs(
      internetGatewayName: pulumi.Input.fromValue(map['internetGatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
