// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsDataPointDrillUpDownOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsDataPointDrillUpDownOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  DashboardDashboardPublishOptionsDataPointDrillUpDownOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'availabilityStatus': ?availabilityStatus};
  }

  factory DashboardDashboardPublishOptionsDataPointDrillUpDownOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return DashboardDashboardPublishOptionsDataPointDrillUpDownOption(
      availabilityStatus: (() {
        final guardedValue = map['availabilityStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
