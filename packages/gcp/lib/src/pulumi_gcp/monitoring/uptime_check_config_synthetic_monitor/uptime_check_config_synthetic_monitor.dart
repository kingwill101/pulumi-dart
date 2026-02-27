// ignore_for_file: unused_element, unnecessary_cast

import '../uptime_check_config_synthetic_monitor_cloud_function_v2/uptime_check_config_synthetic_monitor_cloud_function_v2.dart';

class UptimeCheckConfigSyntheticMonitor {
  /// Target a Synthetic Monitor GCFv2 Instance
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_synthetic_monitor_cloud_function_v2"></a>The `cloud_function_v2` block supports:
  final UptimeCheckConfigSyntheticMonitorCloudFunctionV2 cloudFunctionV2;

  UptimeCheckConfigSyntheticMonitor({
    required this.cloudFunctionV2,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudFunctionV2'] = cloudFunctionV2.toMap();
    return map;
  }

  factory UptimeCheckConfigSyntheticMonitor.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigSyntheticMonitor(
      cloudFunctionV2: UptimeCheckConfigSyntheticMonitorCloudFunctionV2.fromMap(
          (map['cloudFunctionV2'] as Map).cast<String, dynamic>()),
    );
  }
}
