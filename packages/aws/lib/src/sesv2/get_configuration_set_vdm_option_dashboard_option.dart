// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationSetVdmOptionDashboardOption {
  /// Specifies the status of your VDM engagement metrics collection.
  final String engagementMetrics;

  /// Creates a new [GetConfigurationSetVdmOptionDashboardOption].
  /// [engagementMetrics] Specifies the status of your VDM engagement metrics collection.
  GetConfigurationSetVdmOptionDashboardOption({
    required this.engagementMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engagementMetrics': engagementMetrics,
    };
  }

  factory GetConfigurationSetVdmOptionDashboardOption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetVdmOptionDashboardOption(
      engagementMetrics: map['engagementMetrics'] as String,
    );
  }
}

