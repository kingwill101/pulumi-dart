// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityStatus': ?availabilityStatus};
  }

  factory DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
