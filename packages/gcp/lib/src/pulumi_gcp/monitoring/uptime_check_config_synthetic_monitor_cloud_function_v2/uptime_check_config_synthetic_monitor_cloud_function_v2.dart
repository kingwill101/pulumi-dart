// ignore_for_file: unused_element, unnecessary_cast

class UptimeCheckConfigSyntheticMonitorCloudFunctionV2 {
  /// A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  final String name;

  UptimeCheckConfigSyntheticMonitorCloudFunctionV2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory UptimeCheckConfigSyntheticMonitorCloudFunctionV2.fromMap(
      Map<String, dynamic> map) {
    return UptimeCheckConfigSyntheticMonitorCloudFunctionV2(
      name: map['name'] as String,
    );
  }
}
