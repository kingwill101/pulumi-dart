// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_nat_gateway_args_doc}
/// Arguments for getNatGateway.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_nat_gateway_args_doc}
class GetNatGatewayArgs {
  /// Name of the nat gateway
  final pulumi.Input<String> natGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNatGatewayArgs].
  /// [natGatewayName] Name of the nat gateway
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNatGatewayArgs({
    required String natGatewayName,
    required String resourceGroupName,
  }) :
      natGatewayName = pulumi.Input.asInput<String>(natGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natGatewayName': natGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayArgs(
      natGatewayName: map['natGatewayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

