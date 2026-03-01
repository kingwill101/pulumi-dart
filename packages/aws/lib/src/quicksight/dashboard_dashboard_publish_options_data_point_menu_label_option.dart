// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsDataPointMenuLabelOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsDataPointMenuLabelOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsDataPointMenuLabelOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityStatus': ?availabilityStatus};
  }

  factory DashboardDashboardPublishOptionsDataPointMenuLabelOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return DashboardDashboardPublishOptionsDataPointMenuLabelOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
