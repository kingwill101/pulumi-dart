// ignore_for_file: unused_element, unnecessary_cast

import '../uptime_check_config_synthetic_monitor_cloud_function_v2/uptime_check_config_synthetic_monitor_cloud_function_v2.dart';

class UptimeCheckConfigSyntheticMonitor {
  /// Target a Synthetic Monitor GCFv2 Instance
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedSyntheticMonitorCloudFunctionV2"" pulumi-lang-dotnet=""NestedSyntheticMonitorCloudFunctionV2"" pulumi-lang-go=""nestedSyntheticMonitorCloudFunctionV2"" pulumi-lang-python=""nested_synthetic_monitor_cloud_function_v2"" pulumi-lang-yaml=""nestedSyntheticMonitorCloudFunctionV2"" pulumi-lang-java=""nestedSyntheticMonitorCloudFunctionV2"">"nested_synthetic_monitor_cloud_function_v2"</span>></a>The <span pulumi-lang-nodejs="`cloudFunctionV2`" pulumi-lang-dotnet="`CloudFunctionV2`" pulumi-lang-go="`cloudFunctionV2`" pulumi-lang-python="`cloud_function_v2`" pulumi-lang-yaml="`cloudFunctionV2`" pulumi-lang-java="`cloudFunctionV2`">`cloud_function_v2`</span> block supports:
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
