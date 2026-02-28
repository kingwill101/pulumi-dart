// ignore_for_file: unused_element, unnecessary_cast

class DashboardDashboardPublishOptionsExportWithHiddenFieldsOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final String? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsExportWithHiddenFieldsOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsExportWithHiddenFieldsOption({
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

  factory DashboardDashboardPublishOptionsExportWithHiddenFieldsOption.fromMap(
      Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsExportWithHiddenFieldsOption(
      availabilityStatus: map['availabilityStatus'] == null
          ? null
          : map['availabilityStatus'] as String,
    );
  }
}
