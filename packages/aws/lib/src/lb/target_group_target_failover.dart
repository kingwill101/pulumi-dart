// ignore_for_file: unused_element, unnecessary_cast


class TargetGroupTargetFailover {
  /// Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_unhealthy`. Default: `no_rebalance`.
  final String onDeregistration;
  /// Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_deregistration`. Default: `no_rebalance`.
  final String onUnhealthy;

  /// Creates a new [TargetGroupTargetFailover].
  /// [onDeregistration] Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_unhealthy`. Default: `no_rebalance`.
  /// [onUnhealthy] Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_deregistration`. Default: `no_rebalance`.
  TargetGroupTargetFailover({
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
      onDeregistration: map['onDeregistration'] as String,
      onUnhealthy: map['onUnhealthy'] as String,
    );
  }
}

