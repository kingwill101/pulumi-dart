// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetwork_get_managed_network_args_doc}
/// Arguments for getManagedNetwork.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_get_managed_network_args_doc}
class GetManagedNetworkArgs {
  /// The name of the Managed Network.
  final pulumi.Input<String> managedNetworkName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedNetworkArgs].
  /// [managedNetworkName] The name of the Managed Network.
  /// [resourceGroupName] The name of the resource group.
  GetManagedNetworkArgs({
    required this.managedNetworkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetworkName': managedNetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkArgs(
      managedNetworkName: pulumi.Input.fromValue(
        map['managedNetworkName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
