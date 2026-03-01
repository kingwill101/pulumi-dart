// ignore_for_file: unused_element, unnecessary_cast

import 'alert_processing_rule_suppression_condition_alert_context.dart';
import 'alert_processing_rule_suppression_condition_alert_rule_id.dart';
import 'alert_processing_rule_suppression_condition_alert_rule_name.dart';
import 'alert_processing_rule_suppression_condition_description.dart';
import 'alert_processing_rule_suppression_condition_monitor_condition.dart';
import 'alert_processing_rule_suppression_condition_monitor_service.dart';
import 'alert_processing_rule_suppression_condition_severity.dart';
import 'alert_processing_rule_suppression_condition_signal_type.dart';
import 'alert_processing_rule_suppression_condition_target_resource.dart';
import 'alert_processing_rule_suppression_condition_target_resource_group.dart';
import 'alert_processing_rule_suppression_condition_target_resource_type.dart';

class AlertProcessingRuleSuppressionCondition {
  /// A `alert_context` block as defined above.
  final AlertProcessingRuleSuppressionConditionAlertContext? alertContext;
  /// A `alert_rule_id` block as defined above.
  final AlertProcessingRuleSuppressionConditionAlertRuleId? alertRuleId;
  /// A `alert_rule_name` block as defined above.
  final AlertProcessingRuleSuppressionConditionAlertRuleName? alertRuleName;
  /// A `description` block as defined below.
  final AlertProcessingRuleSuppressionConditionDescription? description;
  /// A `monitor_condition` block as defined below.
  final AlertProcessingRuleSuppressionConditionMonitorCondition? monitorCondition;
  /// A `monitor_service` block as defined below.
  final AlertProcessingRuleSuppressionConditionMonitorService? monitorService;
  /// A `severity` block as defined below.
  final AlertProcessingRuleSuppressionConditionSeverity? severity;
  /// A `signal_type` block as defined below.
  final AlertProcessingRuleSuppressionConditionSignalType? signalType;
  /// A `target_resource` block as defined below.
  final AlertProcessingRuleSuppressionConditionTargetResource? targetResource;
  /// A `target_resource_group` block as defined below.
  final AlertProcessingRuleSuppressionConditionTargetResourceGroup? targetResourceGroup;
  /// A `target_resource_type` block as defined below.
  final AlertProcessingRuleSuppressionConditionTargetResourceType? targetResourceType;

  /// Creates a new [AlertProcessingRuleSuppressionCondition].
  /// [alertContext] A `alert_context` block as defined above.
  /// [alertRuleId] A `alert_rule_id` block as defined above.
  /// [alertRuleName] A `alert_rule_name` block as defined above.
  /// [description] A `description` block as defined below.
  /// [monitorCondition] A `monitor_condition` block as defined below.
  /// [monitorService] A `monitor_service` block as defined below.
  /// [severity] A `severity` block as defined below.
  /// [signalType] A `signal_type` block as defined below.
  /// [targetResource] A `target_resource` block as defined below.
  /// [targetResourceGroup] A `target_resource_group` block as defined below.
  /// [targetResourceType] A `target_resource_type` block as defined below.
  AlertProcessingRuleSuppressionCondition({
    this.alertContext,
    this.alertRuleId,
    this.alertRuleName,
    this.description,
    this.monitorCondition,
    this.monitorService,
    this.severity,
    this.signalType,
    this.targetResource,
    this.targetResourceGroup,
    this.targetResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContext': ?alertContext == null ? null : alertContext!.toMap(),
      'alertRuleId': ?alertRuleId == null ? null : alertRuleId!.toMap(),
      'alertRuleName': ?alertRuleName == null ? null : alertRuleName!.toMap(),
      'description': ?description == null ? null : description!.toMap(),
      'monitorCondition': ?monitorCondition == null ? null : monitorCondition!.toMap(),
      'monitorService': ?monitorService == null ? null : monitorService!.toMap(),
      'severity': ?severity == null ? null : severity!.toMap(),
      'signalType': ?signalType == null ? null : signalType!.toMap(),
      'targetResource': ?targetResource == null ? null : targetResource!.toMap(),
      'targetResourceGroup': ?targetResourceGroup == null ? null : targetResourceGroup!.toMap(),
      'targetResourceType': ?targetResourceType == null ? null : targetResourceType!.toMap(),
    };
  }

  factory AlertProcessingRuleSuppressionCondition.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionCondition(
      alertContext: map['alertContext'] == null ? null : AlertProcessingRuleSuppressionConditionAlertContext.fromMap((map['alertContext'] as Map).cast<String, dynamic>()),
      alertRuleId: map['alertRuleId'] == null ? null : AlertProcessingRuleSuppressionConditionAlertRuleId.fromMap((map['alertRuleId'] as Map).cast<String, dynamic>()),
      alertRuleName: map['alertRuleName'] == null ? null : AlertProcessingRuleSuppressionConditionAlertRuleName.fromMap((map['alertRuleName'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : AlertProcessingRuleSuppressionConditionDescription.fromMap((map['description'] as Map).cast<String, dynamic>()),
      monitorCondition: map['monitorCondition'] == null ? null : AlertProcessingRuleSuppressionConditionMonitorCondition.fromMap((map['monitorCondition'] as Map).cast<String, dynamic>()),
      monitorService: map['monitorService'] == null ? null : AlertProcessingRuleSuppressionConditionMonitorService.fromMap((map['monitorService'] as Map).cast<String, dynamic>()),
      severity: map['severity'] == null ? null : AlertProcessingRuleSuppressionConditionSeverity.fromMap((map['severity'] as Map).cast<String, dynamic>()),
      signalType: map['signalType'] == null ? null : AlertProcessingRuleSuppressionConditionSignalType.fromMap((map['signalType'] as Map).cast<String, dynamic>()),
      targetResource: map['targetResource'] == null ? null : AlertProcessingRuleSuppressionConditionTargetResource.fromMap((map['targetResource'] as Map).cast<String, dynamic>()),
      targetResourceGroup: map['targetResourceGroup'] == null ? null : AlertProcessingRuleSuppressionConditionTargetResourceGroup.fromMap((map['targetResourceGroup'] as Map).cast<String, dynamic>()),
      targetResourceType: map['targetResourceType'] == null ? null : AlertProcessingRuleSuppressionConditionTargetResourceType.fromMap((map['targetResourceType'] as Map).cast<String, dynamic>()),
    );
  }
}

