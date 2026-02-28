// ignore_for_file: unused_element, unnecessary_cast

import 'node_taint_effect_container_v1beta1.dart';

/// Kubernetes taint is composed of three fields: key, value, and effect. Effect can only be one of three types: NoSchedule, PreferNoSchedule or NoExecute. See [here](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration) for more information, including usage and the valid values.
class NodeTaintContainerV1beta1 {
  /// Effect for taint.
  final NodeTaintEffectContainerV1beta1? effect;

  /// Key for taint.
  final String? key;

  /// Value for taint.
  final String? value;

  /// Creates a new [NodeTaintContainerV1beta1].
  /// [effect] Effect for taint.
  /// [key] Key for taint.
  /// [value] Value for taint.
  NodeTaintContainerV1beta1({
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

  factory NodeTaintContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodeTaintContainerV1beta1(
      effect: map['effect'] == null
          ? null
          : NodeTaintEffectContainerV1beta1.fromValue(map['effect'] as String),
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
