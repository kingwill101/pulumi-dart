// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsAdHocFilteringOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  DashboardDashboardPublishOptionsAdHocFilteringOption({
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

  factory DashboardDashboardPublishOptionsAdHocFilteringOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsAdHocFilteringOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
