// ignore_for_file: unused_element, unnecessary_cast


/// Linux Server licensing settings.
class LinuxServerLicensingSettings {
  /// Licence Cost.
  final double licenseCost;

  /// Creates a new [LinuxServerLicensingSettings].
  /// [licenseCost] Licence Cost.
  LinuxServerLicensingSettings({
    required this.licenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
    };
  }

  factory LinuxServerLicensingSettings.fromMap(Map<String, dynamic> map) {
    return LinuxServerLicensingSettings(
      licenseCost: map['licenseCost'] as double,
    );
  }
}

