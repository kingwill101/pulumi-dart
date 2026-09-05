// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepAuroraProvisionedScalingConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;
  /// Map of regions to Aurora instance ARNs.
  final pulumi.Input<Map<String, String>> instanceArns;
  /// Map of regions to database cluster ARNs.
  final pulumi.Input<Map<String, String>> regionDatabaseClusterArns;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepAuroraProvisionedScalingConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [instanceArns] Map of regions to Aurora instance ARNs.
  /// [regionDatabaseClusterArns] Map of regions to database cluster ARNs.
  /// [timeoutMinutes] Timeout in minutes.
  const PlanWorkflowStepAuroraProvisionedScalingConfig({
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.instanceArns,
    required this.regionDatabaseClusterArns,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'globalClusterIdentifier': globalClusterIdentifier,
      'instanceArns': instanceArns,
      'regionDatabaseClusterArns': regionDatabaseClusterArns,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepAuroraProvisionedScalingConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepAuroraProvisionedScalingConfig(
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: pulumi.Input.fromValue(map['globalClusterIdentifier'] as String),
      instanceArns: pulumi.Input.fromValue((map['instanceArns'] as Map).cast<String, String>()),
      regionDatabaseClusterArns: pulumi.Input.fromValue((map['regionDatabaseClusterArns'] as Map).cast<String, String>()),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
