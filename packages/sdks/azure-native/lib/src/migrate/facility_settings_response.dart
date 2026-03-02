// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Facility settings.
class FacilitySettingsResponse {
  /// The facilities cost.
  final pulumi.Input<double>? facilitiesCostPerKwh;

  /// Creates a new [FacilitySettingsResponse].
  /// [facilitiesCostPerKwh] The facilities cost.
  FacilitySettingsResponse({
    this.facilitiesCostPerKwh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilitiesCostPerKwh': ?facilitiesCostPerKwh,
    };
  }

  factory FacilitySettingsResponse.fromMap(Map<String, dynamic> map) {
    return FacilitySettingsResponse(
      facilitiesCostPerKwh: map['facilitiesCostPerKwh'] == null ? null : (map['facilitiesCostPerKwh'] as double).input(),
    );
  }
}

