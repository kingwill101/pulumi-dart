// ignore_for_file: unused_element, unnecessary_cast


/// Windows Server licensing settings.
class WindowsServerLicensingSettings {
  /// Licence Cost.
  final double licenseCost;
  /// Licenses per core.
  final int licensesPerCore;
  /// Software assurance (SA) cost.
  final double softwareAssuranceCost;

  /// Creates a new [WindowsServerLicensingSettings].
  /// [licenseCost] Licence Cost.
  /// [licensesPerCore] Licenses per core.
  /// [softwareAssuranceCost] Software assurance (SA) cost.
  WindowsServerLicensingSettings({
    required this.licenseCost,
    required this.licensesPerCore,
    required this.softwareAssuranceCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'licensesPerCore': licensesPerCore,
      'softwareAssuranceCost': softwareAssuranceCost,
    };
  }

  factory WindowsServerLicensingSettings.fromMap(Map<String, dynamic> map) {
    return WindowsServerLicensingSettings(
      licenseCost: map['licenseCost'] as double,
      licensesPerCore: map['licensesPerCore'] as int,
      softwareAssuranceCost: map['softwareAssuranceCost'] as double,
    );
  }
}

