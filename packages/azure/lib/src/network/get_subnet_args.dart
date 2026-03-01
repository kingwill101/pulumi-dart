// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_subnet_get_subnet_args_doc}
/// Arguments for getSubnet.
/// {@endtemplate}
/// {@macro pulumi_network_get_subnet_get_subnet_args_doc}
class GetSubnetArgs {
  /// Specifies the name of the Subnet.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Virtual Network is located in.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the Virtual Network this Subnet is located within.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetSubnetArgs].
  /// [name] Specifies the name of the Subnet.
  /// [resourceGroupName] Specifies the name of the resource group the Virtual Network is located in.
  /// [virtualNetworkName] Specifies the name of the Virtual Network this Subnet is located within.
  GetSubnetArgs({
    required String name,
    required String resourceGroupName,
    required String virtualNetworkName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkName: map['virtualNetworkName'] as String,
    );
  }
}

