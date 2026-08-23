// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepAuroraServerlessScalingConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// Global cluster identifier.
  final pulumi.Input<String> globalClusterIdentifier;
  /// Map of regions to database cluster ARNs.
  final pulumi.Input<Map<String, String>> regionDatabaseClusterArns;
  /// Target capacity percentage.
  final pulumi.Input<int>? targetPercent;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepAuroraServerlessScalingConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [globalClusterIdentifier] Global cluster identifier.
  /// [regionDatabaseClusterArns] Map of regions to database cluster ARNs.
  /// [targetPercent] Target capacity percentage.
  /// [timeoutMinutes] Timeout in minutes.
  const PlanWorkflowStepAuroraServerlessScalingConfig({
    this.crossAccountRole,
    this.externalId,
    required this.globalClusterIdentifier,
    required this.regionDatabaseClusterArns,
    this.targetPercent,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'globalClusterIdentifier': globalClusterIdentifier,
      'regionDatabaseClusterArns': regionDatabaseClusterArns,
      'targetPercent': ?targetPercent,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepAuroraServerlessScalingConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepAuroraServerlessScalingConfig(
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalClusterIdentifier: pulumi.Input.fromValue(map['globalClusterIdentifier'] as String),
      regionDatabaseClusterArns: pulumi.Input.fromValue((map['regionDatabaseClusterArns'] as Map).cast<String, String>()),
      targetPercent: (() { final guardedValue = map['targetPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
