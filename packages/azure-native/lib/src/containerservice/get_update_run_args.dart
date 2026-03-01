// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_update_run_args_doc}
/// Arguments for getUpdateRun.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_update_run_args_doc}
class GetUpdateRunArgs {
  /// The name of the Fleet resource.
  final pulumi.Input<String> fleetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the UpdateRun resource.
  final pulumi.Input<String> updateRunName;

  /// Creates a new [GetUpdateRunArgs].
  /// [fleetName] The name of the Fleet resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updateRunName] The name of the UpdateRun resource.
  GetUpdateRunArgs({
    required String fleetName,
    required String resourceGroupName,
    required String updateRunName,
  }) :
      fleetName = pulumi.Input.asInput<String>(fleetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      updateRunName = pulumi.Input.asInput<String>(updateRunName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fleetName': fleetName,
      'resourceGroupName': resourceGroupName,
      'updateRunName': updateRunName,
    };
  }

  factory GetUpdateRunArgs.fromMap(Map<String, dynamic> map) {
    return GetUpdateRunArgs(
      fleetName: map['fleetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      updateRunName: map['updateRunName'] as String,
    );
  }
}

