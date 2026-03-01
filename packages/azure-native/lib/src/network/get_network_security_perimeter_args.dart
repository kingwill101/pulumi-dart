// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_perimeter_args_doc}
/// Arguments for getNetworkSecurityPerimeter.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_perimeter_args_doc}
class GetNetworkSecurityPerimeterArgs {
  /// The name of the network security perimeter.
  final pulumi.Input<String> networkSecurityPerimeterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityPerimeterArgs].
  /// [networkSecurityPerimeterName] The name of the network security perimeter.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkSecurityPerimeterArgs({
    required String networkSecurityPerimeterName,
    required String resourceGroupName,
  }) :
      networkSecurityPerimeterName = pulumi.Input.asInput<String>(networkSecurityPerimeterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityPerimeterName': networkSecurityPerimeterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityPerimeterArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterArgs(
      networkSecurityPerimeterName: map['networkSecurityPerimeterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

