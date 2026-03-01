// ignore_for_file: unused_element, unnecessary_cast

class AccountVdmAttributesDashboardAttributes {
  /// Specifies the status of your VDM engagement metrics collection. Valid values: `ENABLED`, `DISABLED`.
  final String? engagementMetrics;

  /// Creates a new [AccountVdmAttributesDashboardAttributes].
  /// [engagementMetrics] Specifies the status of your VDM engagement metrics collection. Valid values: `ENABLED`, `DISABLED`.
  AccountVdmAttributesDashboardAttributes({this.engagementMetrics});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'engagementMetrics': ?engagementMetrics};
  }

  factory AccountVdmAttributesDashboardAttributes.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccountVdmAttributesDashboardAttributes(
      engagementMetrics: map['engagementMetrics'] == null
          ? null
          : map['engagementMetrics'] as String,
    );
  }
}
