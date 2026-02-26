// ignore_for_file: unused_element, unnecessary_cast

class AccountVdmAttributesDashboardAttributes {
  /// Specifies the status of your VDM engagement metrics collection. Valid values: `ENABLED`, `DISABLED`.
  final String? engagementMetrics;

  AccountVdmAttributesDashboardAttributes({
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

  factory AccountVdmAttributesDashboardAttributes.fromMap(
      Map<String, dynamic> map) {
    return AccountVdmAttributesDashboardAttributes(
      engagementMetrics: map['engagementMetrics'] == null
          ? null
          : map['engagementMetrics'] as String,
    );
  }
}
