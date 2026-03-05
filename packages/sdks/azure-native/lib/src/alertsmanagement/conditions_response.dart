// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response.dart';

/// Conditions in alert instance to be matched for a given action rule. Default value is all. Multiple values could be provided with comma separation.
class ConditionsResponse {
  /// filter alerts by alert context (payload)
  final pulumi.Input<ConditionResponse>? alertContext;
  /// filter alerts by alert rule id
  final pulumi.Input<ConditionResponse>? alertRuleId;
  /// filter alerts by alert rule name
  final pulumi.Input<ConditionResponse>? alertRuleName;
  /// filter alerts by alert rule description
  final pulumi.Input<ConditionResponse>? description;
  /// filter alerts by monitor condition
  final pulumi.Input<ConditionResponse>? monitorCondition;
  /// filter alerts by monitor service
  final pulumi.Input<ConditionResponse>? monitorService;
  /// filter alerts by severity
  final pulumi.Input<ConditionResponse>? severity;
  /// filter alerts by target resource type
  final pulumi.Input<ConditionResponse>? targetResourceType;

  /// Creates a new [ConditionsResponse].
  /// [alertContext] filter alerts by alert context (payload)
  /// [alertRuleId] filter alerts by alert rule id
  /// [alertRuleName] filter alerts by alert rule name
  /// [description] filter alerts by alert rule description
  /// [monitorCondition] filter alerts by monitor condition
  /// [monitorService] filter alerts by monitor service
  /// [severity] filter alerts by severity
  /// [targetResourceType] filter alerts by target resource type
  ConditionsResponse({
    this.alertContext,
    this.alertRuleId,
    this.alertRuleName,
    this.description,
    this.monitorCondition,
    this.monitorService,
    this.severity,
    this.targetResourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertContext': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(alertContext, (value) => value.toMap()),
      'alertRuleId': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(alertRuleId, (value) => value.toMap()),
      'alertRuleName': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(alertRuleName, (value) => value.toMap()),
      'description': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(description, (value) => value.toMap()),
      'monitorCondition': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(monitorCondition, (value) => value.toMap()),
      'monitorService': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(monitorService, (value) => value.toMap()),
      'severity': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(severity, (value) => value.toMap()),
      'targetResourceType': ?pulumi.Input.mapOptionalInputValue<ConditionResponse, Map<String, dynamic>>(targetResourceType, (value) => value.toMap()),
    };
  }

  factory ConditionsResponse.fromMap(Map<String, dynamic> map) {
    return ConditionsResponse(
      alertContext: (() { final guardedValue = map['alertContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleId: (() { final guardedValue = map['alertRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      alertRuleName: (() { final guardedValue = map['alertRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorCondition: (() { final guardedValue = map['monitorCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorService: (() { final guardedValue = map['monitorService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetResourceType: (() { final guardedValue = map['targetResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

