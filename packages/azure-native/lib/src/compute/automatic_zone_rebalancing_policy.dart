// ignore_for_file: unused_element, unnecessary_cast


/// The configuration parameters used while performing automatic AZ balancing.
class AutomaticZoneRebalancingPolicy {
  /// Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false.
  final bool? enabled;
  /// Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
  final String? rebalanceBehavior;
  /// Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
  final String? rebalanceStrategy;

  /// Creates a new [AutomaticZoneRebalancingPolicy].
  /// [enabled] Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false.
  /// [rebalanceBehavior] Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
  /// [rebalanceStrategy] Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
  AutomaticZoneRebalancingPolicy({
    this.enabled,
    this.rebalanceBehavior,
    this.rebalanceStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'rebalanceBehavior': ?rebalanceBehavior,
      'rebalanceStrategy': ?rebalanceStrategy,
    };
  }

  factory AutomaticZoneRebalancingPolicy.fromMap(Map<String, dynamic> map) {
    return AutomaticZoneRebalancingPolicy(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      rebalanceBehavior: map['rebalanceBehavior'] == null ? null : map['rebalanceBehavior'] as String,
      rebalanceStrategy: map['rebalanceStrategy'] == null ? null : map['rebalanceStrategy'] as String,
    );
  }
}

