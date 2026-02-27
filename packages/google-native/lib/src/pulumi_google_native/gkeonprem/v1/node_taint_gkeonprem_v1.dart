// ignore_for_file: unused_element, unnecessary_cast

import 'node_taint_effect_gkeonprem_v1.dart';

/// NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaintGkeonpremV1 {
  /// The taint effect.
  final NodeTaintEffectGkeonpremV1? effect;

  /// Key associated with the effect.
  final String? key;

  /// Value associated with the effect.
  final String? value;

  NodeTaintGkeonpremV1({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectValue = effect;
    if (effectValue != null) {
      map['effect'] = effectValue.value;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory NodeTaintGkeonpremV1.fromMap(Map<String, dynamic> map) {
    return NodeTaintGkeonpremV1(
      effect: map['effect'] == null
          ? null
          : NodeTaintEffectGkeonpremV1.fromValue(map['effect'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
