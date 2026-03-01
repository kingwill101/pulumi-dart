// ignore_for_file: unused_element, unnecessary_cast

import 'condition.dart';

/// Conditions in alert instance to be matched for a given action rule. Default value is all. Multiple values could be provided with comma separation.
class Conditions {
  /// filter alerts by alert context (payload)
  final Condition? alertContext;
  /// filter alerts by alert rule id
  final Condition? alertRuleId;
  /// filter alerts by alert rule name
  final Condition? alertRuleName;
  /// filter alerts by alert rule description
  final Condition? description;
  /// filter alerts by monitor condition
  final Condition? monitorCondition;
  /// filter alerts by monitor service
  final Condition? monitorService;
  /// filter alerts by severity
  final Condition? severity;
  /// filter alerts by target resource type
  final Condition? targetResourceType;

  /// Creates a new [Conditions].
  /// [alertContext] filter alerts by alert context (payload)
  /// [alertRuleId] filter alerts by alert rule id
  /// [alertRuleName] filter alerts by alert rule name
  /// [description] filter alerts by alert rule description
  /// [monitorCondition] filter alerts by monitor condition
  /// [monitorService] filter alerts by monitor service
  /// [severity] filter alerts by severity
  /// [targetResourceType] filter alerts by target resource type
  Conditions({
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

  factory Conditions.fromMap(Map<String, dynamic> map) {
    return Conditions(
      alertContext: map['alertContext'] == null ? null : Condition.fromMap((map['alertContext'] as Map).cast<String, dynamic>()),
      alertRuleId: map['alertRuleId'] == null ? null : Condition.fromMap((map['alertRuleId'] as Map).cast<String, dynamic>()),
      alertRuleName: map['alertRuleName'] == null ? null : Condition.fromMap((map['alertRuleName'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : Condition.fromMap((map['description'] as Map).cast<String, dynamic>()),
      monitorCondition: map['monitorCondition'] == null ? null : Condition.fromMap((map['monitorCondition'] as Map).cast<String, dynamic>()),
      monitorService: map['monitorService'] == null ? null : Condition.fromMap((map['monitorService'] as Map).cast<String, dynamic>()),
      severity: map['severity'] == null ? null : Condition.fromMap((map['severity'] as Map).cast<String, dynamic>()),
      targetResourceType: map['targetResourceType'] == null ? null : Condition.fromMap((map['targetResourceType'] as Map).cast<String, dynamic>()),
    );
  }
}

