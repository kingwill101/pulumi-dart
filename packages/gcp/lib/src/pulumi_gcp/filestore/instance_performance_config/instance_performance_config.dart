// ignore_for_file: unused_element, unnecessary_cast

import '../instance_performance_config_fixed_iops/instance_performance_config_fixed_iops.dart';
import '../instance_performance_config_iops_per_tb/instance_performance_config_iops_per_tb.dart';

class InstancePerformanceConfig {
  /// The instance will have a fixed provisioned IOPS value,
  /// which will remain constant regardless of instance
  /// capacity.
  /// Structure is documented below.
  final InstancePerformanceConfigFixedIops? fixedIops;

  /// The instance provisioned IOPS will change dynamically
  /// based on the capacity of the instance.
  /// Structure is documented below.
  final InstancePerformanceConfigIopsPerTb? iopsPerTb;

  InstancePerformanceConfig({
    this.fixedIops,
    this.iopsPerTb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fixedIopsValue = fixedIops;
    if (fixedIopsValue != null) {
      map['fixedIops'] = fixedIopsValue.toMap();
    }
    final iopsPerTbValue = iopsPerTb;
    if (iopsPerTbValue != null) {
      map['iopsPerTb'] = iopsPerTbValue.toMap();
    }
    return map;
  }

  factory InstancePerformanceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePerformanceConfig(
      fixedIops: map['fixedIops'] == null
          ? null
          : InstancePerformanceConfigFixedIops.fromMap(
              (map['fixedIops'] as Map).cast<String, dynamic>()),
      iopsPerTb: map['iopsPerTb'] == null
          ? null
          : InstancePerformanceConfigIopsPerTb.fromMap(
              (map['iopsPerTb'] as Map).cast<String, dynamic>()),
    );
  }
}
