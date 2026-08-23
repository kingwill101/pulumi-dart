// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reconciliation_policy_properties.dart';

/// Instance Properties
class InstanceProperties {
  /// State of instance
  final pulumi.Input<String>? activeState;
  /// Reconciliation policy of instance
  final pulumi.Input<ReconciliationPolicyProperties>? reconciliationPolicy;
  /// Scope of instance
  final pulumi.Input<String>? solutionScope;
  /// Solution version of instance
  final pulumi.Input<String> solutionVersionId;
  /// Target of instance
  final pulumi.Input<String> targetId;

  /// Creates a new [InstanceProperties].
  /// [activeState] State of instance
  /// [reconciliationPolicy] Reconciliation policy of instance
  /// [solutionScope] Scope of instance
  /// [solutionVersionId] Solution version of instance
  /// [targetId] Target of instance
  const InstanceProperties({
    this.activeState,
    this.reconciliationPolicy,
    this.solutionScope,
    required this.solutionVersionId,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeState': ?activeState,
      'reconciliationPolicy': ?pulumi.Input.mapOptionalInputValue<ReconciliationPolicyProperties, Map<String, dynamic>>(reconciliationPolicy, (value) => value.toMap()),
      'solutionScope': ?solutionScope,
      'solutionVersionId': solutionVersionId,
      'targetId': targetId,
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      activeState: (() { final guardedValue = map['activeState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconciliationPolicy: (() { final guardedValue = map['reconciliationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReconciliationPolicyProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      solutionScope: (() { final guardedValue = map['solutionScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      solutionVersionId: pulumi.Input.fromValue(map['solutionVersionId'] as String),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}
