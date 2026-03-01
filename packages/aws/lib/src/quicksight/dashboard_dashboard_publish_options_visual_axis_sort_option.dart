// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsVisualAxisSortOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsVisualAxisSortOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsVisualAxisSortOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityStatus': ?availabilityStatus};
  }

  factory DashboardDashboardPublishOptionsVisualAxisSortOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return DashboardDashboardPublishOptionsVisualAxisSortOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
