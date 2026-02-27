// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetFailoverLb {
  /// Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_unhealthy`. Default: `no_rebalance`.
  final String onDeregistration;

  /// Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are `rebalance` and `no_rebalance`. Must match the attribute value set for `on_deregistration`. Default: `no_rebalance`.
  final String onUnhealthy;

  TargetGroupTargetFailoverLb({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['onDeregistration'] = onDeregistration;
    map['onUnhealthy'] = onUnhealthy;
    return map;
  }

  factory TargetGroupTargetFailoverLb.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetFailoverLb(
      onDeregistration: map['onDeregistration'] as String,
      onUnhealthy: map['onUnhealthy'] as String,
    );
  }
}
