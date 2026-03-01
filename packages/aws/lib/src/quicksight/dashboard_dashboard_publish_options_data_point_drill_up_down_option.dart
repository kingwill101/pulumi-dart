// ignore_for_file: unused_element, unnecessary_cast


class DashboardDashboardPublishOptionsDataPointDrillUpDownOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsDataPointDrillUpDownOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsDataPointDrillUpDownOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsDataPointDrillUpDownOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsDataPointDrillUpDownOption(
      availabilityStatus: map['availabilityStatus'] == null ? null : map['availabilityStatus'] as String,
    );
  }
}

