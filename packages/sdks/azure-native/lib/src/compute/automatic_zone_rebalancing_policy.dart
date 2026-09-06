// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing automatic AZ balancing.
class AutomaticZoneRebalancingPolicy {
  /// Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false.
  final pulumi.Input<bool?>? enabled;
  /// Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
  final pulumi.Input<dynamic>? rebalanceBehavior;
  /// Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
  final pulumi.Input<dynamic>? rebalanceStrategy;

  /// Creates a new [AutomaticZoneRebalancingPolicy].
  /// [enabled] Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false.
  /// [rebalanceBehavior] Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
  /// [rebalanceStrategy] Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
  const AutomaticZoneRebalancingPolicy({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rebalanceBehavior: (() { final guardedValue = map['rebalanceBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rebalanceStrategy: (() { final guardedValue = map['rebalanceStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
