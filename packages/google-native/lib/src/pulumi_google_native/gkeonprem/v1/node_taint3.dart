// ignore_for_file: unused_element, unnecessary_cast

import 'node_taint_effect3.dart';

/// NodeTaint applied to every Kubernetes node in a node pool. Kubernetes taints can be used together with tolerations to control how workloads are scheduled to your nodes. Node taints are permanent.
class NodeTaint3 {
  /// The taint effect.
  final NodeTaintEffect3? effect;

  /// Key associated with the effect.
  final String? key;

  /// Value associated with the effect.
  final String? value;

  NodeTaint3({
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

  factory NodeTaint3.fromMap(Map<String, dynamic> map) {
    return NodeTaint3(
      effect: map['effect'] == null
          ? null
          : NodeTaintEffect3.fromValue(map['effect'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
