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
  InstanceProperties({
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
      activeState: map['activeState'] == null ? null : (map['activeState'] as String).input(),
      reconciliationPolicy: map['reconciliationPolicy'] == null ? null : (ReconciliationPolicyProperties.fromMap((map['reconciliationPolicy'] as Map).cast<String, dynamic>())).input(),
      solutionScope: map['solutionScope'] == null ? null : (map['solutionScope'] as String).input(),
      solutionVersionId: (map['solutionVersionId'] as String).input(),
      targetId: (map['targetId'] as String).input(),
    );
  }
}

