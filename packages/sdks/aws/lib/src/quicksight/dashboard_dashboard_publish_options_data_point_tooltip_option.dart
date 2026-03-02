// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsDataPointTooltipOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsDataPointTooltipOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsDataPointTooltipOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsDataPointTooltipOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsDataPointTooltipOption(
      availabilityStatus: map['availabilityStatus'] == null ? null : (map['availabilityStatus'] as String).input(),
    );
  }
}

