// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsDataPointMenuLabelOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsDataPointMenuLabelOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  const DashboardDashboardPublishOptionsDataPointMenuLabelOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsDataPointMenuLabelOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsDataPointMenuLabelOption(
      availabilityStatus: (() { final guardedValue = map['availabilityStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
