// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasefleetmanager_get_fleetspace_args_doc}
/// Arguments for getFleetspace.
/// {@endtemplate}
/// {@macro pulumi_databasefleetmanager_get_fleetspace_args_doc}
class GetFleetspaceArgs {
  /// Name of the database fleet.
  final pulumi.Input<String> fleetName;
  /// Name of the fleetspace.
  final pulumi.Input<String> fleetspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFleetspaceArgs].
  /// [fleetName] Name of the database fleet.
  /// [fleetspaceName] Name of the fleetspace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFleetspaceArgs({
    required pulumi.Output<String> fleetName,
    required pulumi.Output<String> fleetspaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      fleetspaceName = pulumi.Input.asInput<String>(fleetspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'fleetspaceName': fleetspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceArgs(
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      fleetspaceName: pulumi.Output.create<String>(map['fleetspaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

