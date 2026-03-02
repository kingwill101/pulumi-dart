// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsExportToCsvOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsExportToCsvOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsExportToCsvOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsExportToCsvOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsExportToCsvOption(
      availabilityStatus: map['availabilityStatus'] == null ? null : (map['availabilityStatus'] as String).input(),
    );
  }
}

