// ignore_for_file: unused_element, unnecessary_cast

class TargetGroupTargetFailover {
  /// Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are <span pulumi-lang-nodejs="`rebalance`" pulumi-lang-dotnet="`Rebalance`" pulumi-lang-go="`rebalance`" pulumi-lang-python="`rebalance`" pulumi-lang-yaml="`rebalance`" pulumi-lang-java="`rebalance`">`rebalance`</span> and <span pulumi-lang-nodejs="`noRebalance`" pulumi-lang-dotnet="`NoRebalance`" pulumi-lang-go="`noRebalance`" pulumi-lang-python="`no_rebalance`" pulumi-lang-yaml="`noRebalance`" pulumi-lang-java="`noRebalance`">`no_rebalance`</span>. Must match the attribute value set for <span pulumi-lang-nodejs="`onUnhealthy`" pulumi-lang-dotnet="`OnUnhealthy`" pulumi-lang-go="`onUnhealthy`" pulumi-lang-python="`on_unhealthy`" pulumi-lang-yaml="`onUnhealthy`" pulumi-lang-java="`onUnhealthy`">`on_unhealthy`</span>. Default: <span pulumi-lang-nodejs="`noRebalance`" pulumi-lang-dotnet="`NoRebalance`" pulumi-lang-go="`noRebalance`" pulumi-lang-python="`no_rebalance`" pulumi-lang-yaml="`noRebalance`" pulumi-lang-java="`noRebalance`">`no_rebalance`</span>.
  final String onDeregistration;

  /// Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are <span pulumi-lang-nodejs="`rebalance`" pulumi-lang-dotnet="`Rebalance`" pulumi-lang-go="`rebalance`" pulumi-lang-python="`rebalance`" pulumi-lang-yaml="`rebalance`" pulumi-lang-java="`rebalance`">`rebalance`</span> and <span pulumi-lang-nodejs="`noRebalance`" pulumi-lang-dotnet="`NoRebalance`" pulumi-lang-go="`noRebalance`" pulumi-lang-python="`no_rebalance`" pulumi-lang-yaml="`noRebalance`" pulumi-lang-java="`noRebalance`">`no_rebalance`</span>. Must match the attribute value set for <span pulumi-lang-nodejs="`onDeregistration`" pulumi-lang-dotnet="`OnDeregistration`" pulumi-lang-go="`onDeregistration`" pulumi-lang-python="`on_deregistration`" pulumi-lang-yaml="`onDeregistration`" pulumi-lang-java="`onDeregistration`">`on_deregistration`</span>. Default: <span pulumi-lang-nodejs="`noRebalance`" pulumi-lang-dotnet="`NoRebalance`" pulumi-lang-go="`noRebalance`" pulumi-lang-python="`no_rebalance`" pulumi-lang-yaml="`noRebalance`" pulumi-lang-java="`noRebalance`">`no_rebalance`</span>.
  final String onUnhealthy;

  TargetGroupTargetFailover({
    required this.onDeregistration,
    required this.onUnhealthy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['onDeregistration'] = onDeregistration;
    map['onUnhealthy'] = onUnhealthy;
    return map;
  }

  factory TargetGroupTargetFailover.fromMap(Map<String, dynamic> map) {
    return TargetGroupTargetFailover(
      onDeregistration: map['onDeregistration'] as String,
      onUnhealthy: map['onUnhealthy'] as String,
    );
  }
}
