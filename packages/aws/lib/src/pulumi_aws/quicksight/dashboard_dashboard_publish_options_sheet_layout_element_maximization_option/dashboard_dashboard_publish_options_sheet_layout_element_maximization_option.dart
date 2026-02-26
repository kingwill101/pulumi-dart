// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption({
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

  factory DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
