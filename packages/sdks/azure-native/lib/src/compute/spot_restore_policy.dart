// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Spot-Try-Restore properties for the virtual machine scale set. With this property customer can enable or disable automatic restore of the evicted Spot VMSS VM instances opportunistically based on capacity availability and pricing constraint.
class SpotRestorePolicy {
  /// Enables the Spot-Try-Restore feature where evicted VMSS SPOT instances will be tried to be restored opportunistically based on capacity availability and pricing constraints
  final pulumi.Input<bool>? enabled;
  /// Timeout value expressed as an ISO 8601 time duration after which the platform will not try to restore the VMSS SPOT instances
  final pulumi.Input<String>? restoreTimeout;

  /// Creates a new [SpotRestorePolicy].
  /// [enabled] Enables the Spot-Try-Restore feature where evicted VMSS SPOT instances will be tried to be restored opportunistically based on capacity availability and pricing constraints
  /// [restoreTimeout] Timeout value expressed as an ISO 8601 time duration after which the platform will not try to restore the VMSS SPOT instances
  SpotRestorePolicy({
    this.enabled,
    this.restoreTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'restoreTimeout': ?restoreTimeout,
    };
  }

  factory SpotRestorePolicy.fromMap(Map<String, dynamic> map) {
    return SpotRestorePolicy(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      restoreTimeout: map['restoreTimeout'] == null ? null : (map['restoreTimeout'] as String).input(),
    );
  }
}

