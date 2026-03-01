// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replication_recovery_plan_args_doc}
/// Arguments for getReplicationRecoveryPlan.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replication_recovery_plan_args_doc}
class GetReplicationRecoveryPlanArgs {
  /// Name of the recovery plan.
  final pulumi.Input<String> recoveryPlanName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetReplicationRecoveryPlanArgs].
  /// [recoveryPlanName] Name of the recovery plan.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  GetReplicationRecoveryPlanArgs({
    required String recoveryPlanName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      recoveryPlanName = pulumi.Input.asInput<String>(recoveryPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryPlanName': recoveryPlanName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetReplicationRecoveryPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanArgs(
      recoveryPlanName: map['recoveryPlanName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

