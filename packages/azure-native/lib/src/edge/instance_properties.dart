// ignore_for_file: unused_element, unnecessary_cast

import 'reconciliation_policy_properties.dart';

/// Instance Properties
class InstanceProperties {
  /// State of instance
  final String? activeState;
  /// Reconciliation policy of instance
  final ReconciliationPolicyProperties? reconciliationPolicy;
  /// Scope of instance
  final String? solutionScope;
  /// Solution version of instance
  final String solutionVersionId;
  /// Target of instance
  final String targetId;

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
      'reconciliationPolicy': ?reconciliationPolicy == null ? null : reconciliationPolicy!.toMap(),
      'solutionScope': ?solutionScope,
      'solutionVersionId': solutionVersionId,
      'targetId': targetId,
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      activeState: map['activeState'] == null ? null : map['activeState'] as String,
      reconciliationPolicy: map['reconciliationPolicy'] == null ? null : ReconciliationPolicyProperties.fromMap((map['reconciliationPolicy'] as Map).cast<String, dynamic>()),
      solutionScope: map['solutionScope'] == null ? null : map['solutionScope'] as String,
      solutionVersionId: map['solutionVersionId'] as String,
      targetId: map['targetId'] as String,
    );
  }
}

