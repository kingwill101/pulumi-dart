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
    final map = <String, dynamic>{};
    final availabilityStatusValue = availabilityStatus;
    if (availabilityStatusValue != null) {
      map['availabilityStatus'] = availabilityStatusValue;
    }
    return map;
  }

  factory DashboardDashboardPublishOptionsDataPointMenuLabelOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsDataPointMenuLabelOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
