// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsVisualAxisSortOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  DashboardDashboardPublishOptionsVisualAxisSortOption({
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

  factory DashboardDashboardPublishOptionsVisualAxisSortOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsVisualAxisSortOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
