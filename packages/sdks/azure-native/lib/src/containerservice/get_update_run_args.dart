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
    required pulumi.Output<String> fleetName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> updateRunName,
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
      fleetName: pulumi.Output.create<String>(map['fleetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      updateRunName: pulumi.Output.create<String>(map['updateRunName'] as String),
    );
  }
}

