// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';

/// Conditions in alert instance to be matched for a given action rule. Default value is all. Multiple values could be provided with comma separation.
class Conditions {
  /// filter alerts by alert context (payload)
  final pulumi.Input<Condition>? alertContext;

  /// filter alerts by alert rule id
  final pulumi.Input<Condition>? alertRuleId;

  /// filter alerts by alert rule name
  final pulumi.Input<Condition>? alertRuleName;

  /// filter alerts by alert rule description
  final pulumi.Input<Condition>? description;

  /// filter alerts by monitor condition
  final pulumi.Input<Condition>? monitorCondition;

  /// filter alerts by monitor service
  final pulumi.Input<Condition>? monitorService;

  /// filter alerts by severity
  final pulumi.Input<Condition>? severity;

  /// filter alerts by target resource type
  final pulumi.Input<Condition>? targetResourceType;

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
      'alertContext':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            alertContext,
            (value) => value.toMap(),
          ),
      'alertRuleId':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            alertRuleId,
            (value) => value.toMap(),
          ),
      'alertRuleName':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            alertRuleName,
            (value) => value.toMap(),
          ),
      'description':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            description,
            (value) => value.toMap(),
          ),
      'monitorCondition':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            monitorCondition,
            (value) => value.toMap(),
          ),
      'monitorService':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            monitorService,
            (value) => value.toMap(),
          ),
      'severity':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            severity,
            (value) => value.toMap(),
          ),
      'targetResourceType':
          ?pulumi.Input.mapOptionalInputValue<Condition, Map<String, dynamic>>(
            targetResourceType,
            (value) => value.toMap(),
          ),
    };
  }

  factory Conditions.fromMap(Map<String, dynamic> map) {
    return Conditions(
      alertContext: (() {
        final guardedValue = map['alertContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      alertRuleId: (() {
        final guardedValue = map['alertRuleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      alertRuleName: (() {
        final guardedValue = map['alertRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      monitorCondition: (() {
        final guardedValue = map['monitorCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      monitorService: (() {
        final guardedValue = map['monitorService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      severity: (() {
        final guardedValue = map['severity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      targetResourceType: (() {
        final guardedValue = map['targetResourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Condition.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
