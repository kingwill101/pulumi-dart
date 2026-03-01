// ignore_for_file: unused_element, unnecessary_cast


class DashboardDashboardPublishOptionsAdHocFilteringOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsAdHocFilteringOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsAdHocFilteringOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsAdHocFilteringOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsAdHocFilteringOption(
      availabilityStatus: map['availabilityStatus'] == null ? null : map['availabilityStatus'] as String,
    );
  }
}

