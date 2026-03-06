// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Toleration allows ClusterResourcePlacement to tolerate any taint that matches the triple &lt;key,value,effect&gt; using the matching operator &lt;operator&gt;.
class PlacementV1TolerationResponse {
  /// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, only allowed value is NoSchedule.
  final pulumi.Input<String>? effect;
  /// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  final pulumi.Input<String>? key;
  /// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a ClusterResourcePlacement can tolerate all taints of a particular category.
  final pulumi.Input<String>? operator;
  /// Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  final pulumi.Input<String>? value;

  /// Creates a new [PlacementV1TolerationResponse].
  /// [effect] Effect indicates the taint effect to match. Empty means match all taint effects. When specified, only allowed value is NoSchedule.
  /// [key] Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  /// [operator] Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a ClusterResourcePlacement can tolerate all taints of a particular category.
  /// [value] Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  const PlacementV1TolerationResponse({
    this.effect,
    this.key,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory PlacementV1TolerationResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1TolerationResponse(
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operator: (() { final guardedValue = map['operator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

