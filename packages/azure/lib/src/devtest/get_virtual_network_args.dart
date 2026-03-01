// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtest_get_virtual_network_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_devtest_get_virtual_network_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// Specifies the name of the Dev Test Lab.
  final pulumi.Input<String> labName;
  /// Specifies the name of the Virtual Network.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group that contains the Virtual Network.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [labName] Specifies the name of the Dev Test Lab.
  /// [name] Specifies the name of the Virtual Network.
  /// [resourceGroupName] Specifies the name of the resource group that contains the Virtual Network.
  GetVirtualNetworkArgs({
    required String labName,
    required String name,
    required String resourceGroupName,
  }) :
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      labName: map['labName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

