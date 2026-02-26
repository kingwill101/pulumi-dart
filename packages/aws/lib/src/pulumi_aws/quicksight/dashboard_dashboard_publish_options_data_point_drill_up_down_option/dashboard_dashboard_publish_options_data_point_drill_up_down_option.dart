// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsDataPointDrillUpDownOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  DashboardDashboardPublishOptionsDataPointDrillUpDownOption({
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

  factory DashboardDashboardPublishOptionsDataPointDrillUpDownOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsDataPointDrillUpDownOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
