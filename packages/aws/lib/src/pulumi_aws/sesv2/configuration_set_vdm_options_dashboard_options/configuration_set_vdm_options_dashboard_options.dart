// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetVdmOptionsDashboardOptions {
  /// Specifies the status of your VDM engagement metrics collection. Valid values: `ENABLED`, `DISABLED`.
  final String? engagementMetrics;

  ConfigurationSetVdmOptionsDashboardOptions({
    this.engagementMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engagementMetricsValue = engagementMetrics;
    if (engagementMetricsValue != null) {
      map['engagementMetrics'] = engagementMetricsValue;
    }
    return map;
  }

  factory ConfigurationSetVdmOptionsDashboardOptions.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetVdmOptionsDashboardOptions(
      engagementMetrics: map['engagementMetrics'] == null
          ? null
          : map['engagementMetrics'] as String,
    );
  }
}
