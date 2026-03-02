// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsAdHocFilteringOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsAdHocFilteringOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsAdHocFilteringOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsAdHocFilteringOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsAdHocFilteringOption(
      availabilityStatus: map['availabilityStatus'] == null ? null : ((map['availabilityStatus'] as String).input()).input(),
    );
  }
}

