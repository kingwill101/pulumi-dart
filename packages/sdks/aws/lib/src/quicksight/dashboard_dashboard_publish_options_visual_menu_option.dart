// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsVisualMenuOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsVisualMenuOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsVisualMenuOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsVisualMenuOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsVisualMenuOption(
      availabilityStatus: map['availabilityStatus'] == null ? null : (map['availabilityStatus'] as String).input(),
    );
  }
}

