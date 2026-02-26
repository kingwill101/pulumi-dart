// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_performance_config_fixed_iop/get_instance_performance_config_fixed_iop.dart';
import '../get_instance_performance_config_iops_per_tb/get_instance_performance_config_iops_per_tb.dart';

class GetInstancePerformanceConfig {
  /// The instance will have a fixed provisioned IOPS value,
  /// which will remain constant regardless of instance
  /// capacity.
  final List<GetInstancePerformanceConfigFixedIop> fixedIops;

  /// The instance provisioned IOPS will change dynamically
  /// based on the capacity of the instance.
  final List<GetInstancePerformanceConfigIopsPerTb> iopsPerTbs;

  GetInstancePerformanceConfig({
    required this.fixedIops,
    required this.iopsPerTbs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fixedIops'] = Input.encodeList<GetInstancePerformanceConfigFixedIop,
        Map<String, dynamic>>(fixedIops, (value) => value.toMap());
    map['iopsPerTbs'] = Input.encodeList<GetInstancePerformanceConfigIopsPerTb,
        Map<String, dynamic>>(iopsPerTbs, (value) => value.toMap());
    return map;
  }

  factory GetInstancePerformanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePerformanceConfig(
      fixedIops: Input.decodeList<GetInstancePerformanceConfigFixedIop>(
          map['fixedIops'],
          (value) => GetInstancePerformanceConfigFixedIop.fromMap(
              (value as Map).cast<String, dynamic>())),
      iopsPerTbs: Input.decodeList<GetInstancePerformanceConfigIopsPerTb>(
          map['iopsPerTbs'],
          (value) => GetInstancePerformanceConfigIopsPerTb.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
