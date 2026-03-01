// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector.dart';

/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
class PodDisruptionBudgetSpecPolicyV1beta1 {
  /// An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
  final int? maxUnavailable;
  /// An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
  final int? minAvailable;
  /// Label query over pods whose evictions are managed by the disruption budget.
  final LabelSelector? selector;

  /// Creates a new [PodDisruptionBudgetSpecPolicyV1beta1].
  /// [maxUnavailable] An eviction is allowed if at most "maxUnavailable" pods selected by "selector" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with "minAvailable".
  /// [minAvailable] An eviction is allowed if at least "minAvailable" pods selected by "selector" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying "100%".
  /// [selector] Label query over pods whose evictions are managed by the disruption budget.
  PodDisruptionBudgetSpecPolicyV1beta1({
    this.maxUnavailable,
    this.minAvailable,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': ?maxUnavailable,
      'minAvailable': ?minAvailable,
      'selector': ?selector == null ? null : selector!.toMap(),
    };
  }

  factory PodDisruptionBudgetSpecPolicyV1beta1.fromMap(Map<String, dynamic> map) {
    return PodDisruptionBudgetSpecPolicyV1beta1(
      maxUnavailable: map['maxUnavailable'] == null ? null : map['maxUnavailable'] as int,
      minAvailable: map['minAvailable'] == null ? null : map['minAvailable'] as int,
      selector: map['selector'] == null ? null : LabelSelector.fromMap((map['selector'] as Map).cast<String, dynamic>()),
    );
  }
}

