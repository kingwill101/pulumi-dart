// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetwork_get_managed_network_group_args_doc}
/// Arguments for getManagedNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_get_managed_network_group_args_doc}
class GetManagedNetworkGroupArgs {
  /// The name of the Managed Network Group.
  final pulumi.Input<String> managedNetworkGroupName;

  /// The name of the Managed Network.
  final pulumi.Input<String> managedNetworkName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedNetworkGroupArgs].
  /// [managedNetworkGroupName] The name of the Managed Network Group.
  /// [managedNetworkName] The name of the Managed Network.
  /// [resourceGroupName] The name of the resource group.
  GetManagedNetworkGroupArgs({
    required this.managedNetworkGroupName,
    required this.managedNetworkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedNetworkGroupName': managedNetworkGroupName,
      'managedNetworkName': managedNetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedNetworkGroupArgs(
      managedNetworkGroupName: pulumi.Input.fromValue(
        map['managedNetworkGroupName'] as String,
      ),
      managedNetworkName: pulumi.Input.fromValue(
        map['managedNetworkName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
