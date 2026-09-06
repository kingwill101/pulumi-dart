// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing automatic AZ balancing.
class AutomaticZoneRebalancingPolicyResponse {
  /// Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false.
  final pulumi.Input<bool?>? enabled;
  /// Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
  final pulumi.Input<String?>? rebalanceBehavior;
  /// Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
  final pulumi.Input<String?>? rebalanceStrategy;

  /// Creates a new [AutomaticZoneRebalancingPolicyResponse].
  /// [enabled] Specifies whether Automatic AZ Balancing should be enabled on the virtual machine scale set. The default value is false.
  /// [rebalanceBehavior] Type of rebalance behavior that will be used for recreating virtual machines in the scale set across availability zones. Default and only supported value for now is CreateBeforeDelete.
  /// [rebalanceStrategy] Type of rebalance strategy that will be used for rebalancing virtual machines in the scale set across availability zones. Default and only supported value for now is Recreate.
  const AutomaticZoneRebalancingPolicyResponse({
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

  factory AutomaticZoneRebalancingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticZoneRebalancingPolicyResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rebalanceBehavior: (() { final guardedValue = map['rebalanceBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebalanceStrategy: (() { final guardedValue = map['rebalanceStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
