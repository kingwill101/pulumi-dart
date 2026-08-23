// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption {
  /// Availability status. Possibles values: ENABLED, DISABLED.
  final pulumi.Input<String>? availabilityStatus;

  /// Creates a new [DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption].
  /// [availabilityStatus] Availability status. Possibles values: ENABLED, DISABLED.
  const DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption({
    this.availabilityStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStatus': ?availabilityStatus,
    };
  }

  factory DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption.fromMap(Map<String, dynamic> map) {
    return DashboardDashboardPublishOptionsSheetLayoutElementMaximizationOption(
      availabilityStatus: (() { final guardedValue = map['availabilityStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
