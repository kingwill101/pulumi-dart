// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_recovery_plan_input_properties.dart';

/// {@template pulumi_recoveryservices_replication_recovery_plan_args_doc}
/// The set of arguments for ReplicationRecoveryPlan.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_recovery_plan_args_doc}
class ReplicationRecoveryPlanArgs {
  /// Recovery plan creation properties.
  final pulumi.Input<CreateRecoveryPlanInputProperties> properties;
  /// Recovery plan name.
  final pulumi.Input<String>? recoveryPlanName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationRecoveryPlanArgs].
  /// [properties] Recovery plan creation properties.
  /// [recoveryPlanName] Recovery plan name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  ReplicationRecoveryPlanArgs({
    required CreateRecoveryPlanInputProperties properties,
    String? recoveryPlanName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      properties = pulumi.Input.asInput<CreateRecoveryPlanInputProperties>(properties),
      recoveryPlanName = pulumi.Input.asOptionalInput<String>(recoveryPlanName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<CreateRecoveryPlanInputProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'recoveryPlanName': ?recoveryPlanName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationRecoveryPlanArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanArgs(
      properties: CreateRecoveryPlanInputProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      recoveryPlanName: map['recoveryPlanName'] == null ? null : map['recoveryPlanName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

