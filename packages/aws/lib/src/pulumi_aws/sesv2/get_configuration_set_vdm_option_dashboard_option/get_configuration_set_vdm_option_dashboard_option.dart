// ignore_for_file: unused_element, unnecessary_cast

class GetConfigurationSetVdmOptionDashboardOption {
  /// Specifies the status of your VDM engagement metrics collection.
  final String engagementMetrics;

  GetConfigurationSetVdmOptionDashboardOption({
    required this.engagementMetrics,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engagementMetrics'] = engagementMetrics;
    return map;
  }

  factory GetConfigurationSetVdmOptionDashboardOption.fromMap(
      Map<String, dynamic> map) {
    return GetConfigurationSetVdmOptionDashboardOption(
      engagementMetrics: map['engagementMetrics'] as String,
    );
  }
}
