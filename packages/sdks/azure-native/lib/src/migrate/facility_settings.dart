// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Facility settings.
class FacilitySettings {
  /// The facilities cost.
  final pulumi.Input<double>? facilitiesCostPerKwh;

  /// Creates a new [FacilitySettings].
  /// [facilitiesCostPerKwh] The facilities cost.
  FacilitySettings({this.facilitiesCostPerKwh});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'facilitiesCostPerKwh': ?facilitiesCostPerKwh};
  }

  factory FacilitySettings.fromMap(Map<String, dynamic> map) {
    return FacilitySettings(
      facilitiesCostPerKwh: (() {
        final guardedValue = map['facilitiesCostPerKwh'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
