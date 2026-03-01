// ignore_for_file: unused_element, unnecessary_cast

import 'condition_response.dart';

/// Conditions in alert instance to be matched for a given action rule. Default value is all. Multiple values could be provided with comma separation.
class ConditionsResponse {
  /// filter alerts by alert context (payload)
  final ConditionResponse? alertContext;
  /// filter alerts by alert rule id
  final ConditionResponse? alertRuleId;
  /// filter alerts by alert rule name
  final ConditionResponse? alertRuleName;
  /// filter alerts by alert rule description
  final ConditionResponse? description;
  /// filter alerts by monitor condition
  final ConditionResponse? monitorCondition;
  /// filter alerts by monitor service
  final ConditionResponse? monitorService;
  /// filter alerts by severity
  final ConditionResponse? severity;
  /// filter alerts by target resource type
  final ConditionResponse? targetResourceType;

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
      'alertContext': ?alertContext == null ? null : alertContext!.toMap(),
      'alertRuleId': ?alertRuleId == null ? null : alertRuleId!.toMap(),
      'alertRuleName': ?alertRuleName == null ? null : alertRuleName!.toMap(),
      'description': ?description == null ? null : description!.toMap(),
      'monitorCondition': ?monitorCondition == null ? null : monitorCondition!.toMap(),
      'monitorService': ?monitorService == null ? null : monitorService!.toMap(),
      'severity': ?severity == null ? null : severity!.toMap(),
      'targetResourceType': ?targetResourceType == null ? null : targetResourceType!.toMap(),
    };
  }

  factory ConditionsResponse.fromMap(Map<String, dynamic> map) {
    return ConditionsResponse(
      alertContext: map['alertContext'] == null ? null : ConditionResponse.fromMap((map['alertContext'] as Map).cast<String, dynamic>()),
      alertRuleId: map['alertRuleId'] == null ? null : ConditionResponse.fromMap((map['alertRuleId'] as Map).cast<String, dynamic>()),
      alertRuleName: map['alertRuleName'] == null ? null : ConditionResponse.fromMap((map['alertRuleName'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : ConditionResponse.fromMap((map['description'] as Map).cast<String, dynamic>()),
      monitorCondition: map['monitorCondition'] == null ? null : ConditionResponse.fromMap((map['monitorCondition'] as Map).cast<String, dynamic>()),
      monitorService: map['monitorService'] == null ? null : ConditionResponse.fromMap((map['monitorService'] as Map).cast<String, dynamic>()),
      severity: map['severity'] == null ? null : ConditionResponse.fromMap((map['severity'] as Map).cast<String, dynamic>()),
      targetResourceType: map['targetResourceType'] == null ? null : ConditionResponse.fromMap((map['targetResourceType'] as Map).cast<String, dynamic>()),
    );
  }
}

