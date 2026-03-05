// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerDeletionProtectionConfig {
  /// Remove the Protection Status.
  final pulumi.Input<bool> enabled;
  /// Deletion Protection Turn-on Time Use Greenwich Mean Time, in the Format of Yyyy-MM-ddTHH: mm:SSZ.
  final pulumi.Input<String> enabledTime;

  /// Creates a new [GetLoadBalancersBalancerDeletionProtectionConfig].
  /// [enabled] Remove the Protection Status.
  /// [enabledTime] Deletion Protection Turn-on Time Use Greenwich Mean Time, in the Format of Yyyy-MM-ddTHH: mm:SSZ.
  GetLoadBalancersBalancerDeletionProtectionConfig({
    required this.enabled,
    required this.enabledTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'enabledTime': enabledTime,
    };
  }

  factory GetLoadBalancersBalancerDeletionProtectionConfig.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerDeletionProtectionConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      enabledTime: pulumi.Input.fromValue(map['enabledTime'] as String),
    );
  }
}

