// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_route53_health_check_config_record_set.dart';

class PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// Route53 hosted zone ID.
  final pulumi.Input<String> hostedZoneId;
  /// DNS record name.
  final pulumi.Input<String> recordName;
  /// Configuration block for record sets. See Record Set below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet>>? recordSets;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [hostedZoneId] Route53 hosted zone ID.
  /// [recordName] DNS record name.
  /// [recordSets] Configuration block for record sets. See Record Set below.
  /// [timeoutMinutes] Timeout in minutes.
  PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig({
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
      'recordSets': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet>, List<Map<String, dynamic>>>(recordSets, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig(
      crossAccountRole: map['crossAccountRole'] == null ? null : (map['crossAccountRole'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      hostedZoneId: (map['hostedZoneId'] as String).input(),
      recordName: (map['recordName'] as String).input(),
      recordSets: map['recordSets'] == null ? null : (pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet>(map['recordSets'], (value) => PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfigRecordSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : (map['timeoutMinutes'] as int).input(),
    );
  }
}

