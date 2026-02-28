// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_parallel_upgrade_config.dart';

/// BareMetalNodePoolUpgradePolicy defines the node pool upgrade policy.
class BareMetalNodePoolUpgradePolicy {
  /// The parallel upgrade settings for worker node pools.
  final BareMetalParallelUpgradeConfig? parallelUpgradeConfig;

  /// Creates a new [BareMetalNodePoolUpgradePolicy].
  /// [parallelUpgradeConfig] The parallel upgrade settings for worker node pools.
  BareMetalNodePoolUpgradePolicy({
    this.parallelUpgradeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelUpgradeConfig': ?parallelUpgradeConfig == null ? null : parallelUpgradeConfig!.toMap(),
    };
  }

  factory BareMetalNodePoolUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return BareMetalNodePoolUpgradePolicy(
      parallelUpgradeConfig: map['parallelUpgradeConfig'] == null ? null : BareMetalParallelUpgradeConfig.fromMap((map['parallelUpgradeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

