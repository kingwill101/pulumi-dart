// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeGroupAckConfigToleration {
  /// The effect of ack cluster tolerations.
  final pulumi.Input<String>? effect;

  /// The tag key for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? key;

  /// The operator of ack cluster tolerations.
  final pulumi.Input<String>? operator;

  /// The tag value for this scaling rule specific metrics trigger.
  final pulumi.Input<String>? value;

  /// Creates a new [ClusterNodeGroupAckConfigToleration].
  /// [effect] The effect of ack cluster tolerations.
  /// [key] The tag key for this scaling rule specific metrics trigger.
  /// [operator] The operator of ack cluster tolerations.
  /// [value] The tag value for this scaling rule specific metrics trigger.
  ClusterNodeGroupAckConfigToleration({
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

  factory ClusterNodeGroupAckConfigToleration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodeGroupAckConfigToleration(
      effect: (() {
        final guardedValue = map['effect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operator: (() {
        final guardedValue = map['operator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
