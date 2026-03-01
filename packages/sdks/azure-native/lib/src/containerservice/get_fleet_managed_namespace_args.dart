// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_fleet_managed_namespace_args_doc}
/// Arguments for getFleetManagedNamespace.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_fleet_managed_namespace_args_doc}
class GetFleetManagedNamespaceArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the fleet managed namespace resource.
  final pulumi.Input<String> managedNamespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetManagedNamespaceArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [managedNamespaceName] The name of the fleet managed namespace resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetManagedNamespaceArgs({
    required pulumi.Output<String> fleetName,
    required pulumi.Output<String> managedNamespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      managedNamespaceName = pulumi.Input.asInput<String>(managedNamespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'managedNamespaceName': managedNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetManagedNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetManagedNamespaceArgs(
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      managedNamespaceName: pulumi.Output.create<String>(map['managedNamespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

