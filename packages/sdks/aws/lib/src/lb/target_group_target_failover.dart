// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGroupTargetFailover {
  /// Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are `rebalance` and `noRebalance`. Must match the attribute value set for `onUnhealthy`. Default: `noRebalance`.
  final pulumi.Input<String> onDeregistration;
  /// Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are `rebalance` and `noRebalance`. Must match the attribute value set for `onDeregistration`. Default: `noRebalance`.
  final pulumi.Input<String> onUnhealthy;

  /// Creates a new [TargetGroupTargetFailover].
  /// [onDeregistration] Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are `rebalance` and `noRebalance`. Must match the attribute value set for `onUnhealthy`. Default: `noRebalance`.
  /// [onUnhealthy] Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are `rebalance` and `noRebalance`. Must match the attribute value set for `onDeregistration`. Default: `noRebalance`.
  const TargetGroupTargetFailover({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onDeregistration': onDeregistration,
      'onUnhealthy': onUnhealthy,
    };
  }

  factory TargetGroupTargetFailover.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetFailover(
      onDeregistration: pulumi.Input.fromValue(map['onDeregistration'] as String),
      onUnhealthy: pulumi.Input.fromValue(map['onUnhealthy'] as String),
    );
  }
}
