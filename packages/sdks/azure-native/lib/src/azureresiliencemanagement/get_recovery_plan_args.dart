// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azureresiliencemanagement_get_recovery_plan_args_doc}
/// Arguments for getRecoveryPlan.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_get_recovery_plan_args_doc}
class GetRecoveryPlanArgs {
  /// The name of the recovery orchestration plan.
  final pulumi.Input<String> recoveryPlanName;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [GetRecoveryPlanArgs].
  /// [recoveryPlanName] The name of the recovery orchestration plan.
  /// [serviceGroupName] The name of the service group.
  const GetRecoveryPlanArgs({
    required this.recoveryPlanName,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryPlanName': recoveryPlanName,
      'serviceGroupName': serviceGroupName,
    };
  }

  factory GetRecoveryPlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRecoveryPlanArgs(
      recoveryPlanName: pulumi.Input.fromValue(map['recoveryPlanName'] as String),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
