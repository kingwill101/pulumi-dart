// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_route53_health_check_config_record_set.dart';

class PlanWorkflowStepRoute53HealthCheckConfig {
  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;
  /// External ID for cross-account role assumption.
  final String? externalId;
  /// Route53 hosted zone ID.
  final String hostedZoneId;
  /// DNS record name.
  final String recordName;
  /// Configuration block for record sets. See Record Set below.
  final List<PlanWorkflowStepRoute53HealthCheckConfigRecordSet>? recordSets;
  /// Timeout in minutes.
  final int? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepRoute53HealthCheckConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [hostedZoneId] Route53 hosted zone ID.
  /// [recordName] DNS record name.
  /// [recordSets] Configuration block for record sets. See Record Set below.
  /// [timeoutMinutes] Timeout in minutes.
  PlanWorkflowStepRoute53HealthCheckConfig({
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
      'recordSets': ?recordSets == null ? null : pulumi.Input.encodeList<PlanWorkflowStepRoute53HealthCheckConfigRecordSet, Map<String, dynamic>>(recordSets!, (value) => value.toMap()),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepRoute53HealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepRoute53HealthCheckConfig(
      crossAccountRole: map['crossAccountRole'] == null ? null : map['crossAccountRole'] as String,
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
      recordName: map['recordName'] as String,
      recordSets: map['recordSets'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepRoute53HealthCheckConfigRecordSet>(map['recordSets'], (value) => PlanWorkflowStepRoute53HealthCheckConfigRecordSet.fromMap((value as Map).cast<String, dynamic>())),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
    );
  }
}

