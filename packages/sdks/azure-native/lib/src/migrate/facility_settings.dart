// ignore_for_file: unused_element, unnecessary_cast


/// Facility settings.
class FacilitySettings {
  /// The facilities cost.
  final double? facilitiesCostPerKwh;

  /// Creates a new [FacilitySettings].
  /// [facilitiesCostPerKwh] The facilities cost.
  FacilitySettings({
    this.facilitiesCostPerKwh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilitiesCostPerKwh': ?facilitiesCostPerKwh,
    };
  }

  factory FacilitySettings.fromMap(Map<String, dynamic> map) {
    return FacilitySettings(
      facilitiesCostPerKwh: map['facilitiesCostPerKwh'] == null ? null : map['facilitiesCostPerKwh'] as double,
    );
  }
}

