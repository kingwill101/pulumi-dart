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
  const GetFleetspaceArgs({
    required this.fleetName,
    required this.fleetspaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'fleetspaceName': fleetspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFleetspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetFleetspaceArgs(
      fleetName: pulumi.Input.fromValue(map['fleetName'] as String),
      fleetspaceName: pulumi.Input.fromValue(map['fleetspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
