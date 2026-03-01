// ignore_for_file: unused_element, unnecessary_cast


class AvailableUpgradeResponse {
  /// The version lifecycle indicator.
  final String availabilityLifecycle;
  /// The version available for upgrading.
  final String version;

  /// Creates a new [AvailableUpgradeResponse].
  /// [availabilityLifecycle] The version lifecycle indicator.
  /// [version] The version available for upgrading.
  AvailableUpgradeResponse({
    required this.availabilityLifecycle,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityLifecycle': availabilityLifecycle,
      'version': version,
    };
  }

  factory AvailableUpgradeResponse.fromMap(Map<String, dynamic> map) {
    return AvailableUpgradeResponse(
      availabilityLifecycle: map['availabilityLifecycle'] as String,
      version: map['version'] as String,
    );
  }
}

