// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_route53_health_check_config_record_set.dart';

class PlanWorkflowStepRoute53HealthCheckConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Route53 hosted zone ID.
  final pulumi.Input<String> hostedZoneId;
  /// DNS record name.
  final pulumi.Input<String> recordName;
  /// Configuration block for record sets. See `recordSet` Block for details.
  final pulumi.Input<List<PlanWorkflowStepRoute53HealthCheckConfigRecordSet>?>? recordSets;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepRoute53HealthCheckConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [hostedZoneId] Route53 hosted zone ID.
  /// [recordName] DNS record name.
  /// [recordSets] Configuration block for record sets. See `recordSet` Block for details.
  /// [timeoutMinutes] Timeout in minutes.
  const PlanWorkflowStepRoute53HealthCheckConfig({
    this.crossAccountRole,
    this.externalId,
    required this.hostedZoneId,
    required this.recordName,
    this.recordSets,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'hostedZoneId': hostedZoneId,
      'recordName': recordName,
      'recordSets': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepRoute53HealthCheckConfigRecordSet>, List<Map<String, dynamic>>>(recordSets, (value) => pulumi.Input.encodeList<PlanWorkflowStepRoute53HealthCheckConfigRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepRoute53HealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepRoute53HealthCheckConfig(
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedZoneId: pulumi.Input.fromValue(map['hostedZoneId'] as String),
      recordName: pulumi.Input.fromValue(map['recordName'] as String),
      recordSets: (() { final guardedValue = map['recordSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepRoute53HealthCheckConfigRecordSet>(guardedValue, (value) => PlanWorkflowStepRoute53HealthCheckConfigRecordSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
