// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsVisualMenuOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  DashboardDashboardPublishOptionsVisualMenuOption({
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

  factory DashboardDashboardPublishOptionsVisualMenuOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsVisualMenuOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
