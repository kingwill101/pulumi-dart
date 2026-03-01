// ignore_for_file: unused_element, unnecessary_cast


/// Linux Server licensing settings.
class LinuxServerLicensingSettingsResponse {
  /// Licence Cost.
  final double licenseCost;

  /// Creates a new [LinuxServerLicensingSettingsResponse].
  /// [licenseCost] Licence Cost.
  LinuxServerLicensingSettingsResponse({
    required this.licenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
    };
  }

  factory LinuxServerLicensingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LinuxServerLicensingSettingsResponse(
      licenseCost: map['licenseCost'] as double,
    );
  }
}

