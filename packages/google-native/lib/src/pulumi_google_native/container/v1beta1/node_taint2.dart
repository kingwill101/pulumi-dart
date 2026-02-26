// ignore_for_file: unused_element, unnecessary_cast

import 'node_taint_effect2.dart';

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaint2 {
  /// Effect for taint.
  final NodeTaintEffect2? effect;

  /// Key for taint.
  final String? key;

  /// Value for taint.
  final String? value;

  NodeTaint2({
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

  factory NodeTaint2.fromMap(Map<String, dynamic> map) {
    return NodeTaint2(
      effect: map['effect'] == null
          ? null
          : NodeTaintEffect2.fromValue(map['effect'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
