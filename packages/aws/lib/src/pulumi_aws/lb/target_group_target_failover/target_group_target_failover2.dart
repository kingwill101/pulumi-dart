// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetFailover2 {
  /// Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_unhealthy`. Default: `no_rebalance`.
  final String onDeregistration;

  /// Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_deregistration`. Default: `no_rebalance`.
  final String onUnhealthy;

  TargetGroupTargetFailover2({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['onDeregistration'] = onDeregistration;
    map['onUnhealthy'] = onUnhealthy;
    return map;
  }

  factory TargetGroupTargetFailover2.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetFailover2(
      onDeregistration: map['onDeregistration'] as String,
      onUnhealthy: map['onUnhealthy'] as String,
    );
  }
}
