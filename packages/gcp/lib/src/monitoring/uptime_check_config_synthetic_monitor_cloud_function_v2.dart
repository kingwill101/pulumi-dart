// ignore_for_file: unused_element, unnecessary_cast


class UptimeCheckConfigSyntheticMonitorCloudFunctionV2 {
  /// A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  final String name;

  /// Creates a new [UptimeCheckConfigSyntheticMonitorCloudFunctionV2].
  /// [name] A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  UptimeCheckConfigSyntheticMonitorCloudFunctionV2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory UptimeCheckConfigSyntheticMonitorCloudFunctionV2.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigSyntheticMonitorCloudFunctionV2(
      name: map['name'] as String,
    );
  }
}

