// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsDataPointTooltipOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  DashboardDashboardPublishOptionsDataPointTooltipOption({
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

  factory DashboardDashboardPublishOptionsDataPointTooltipOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsDataPointTooltipOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
