// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linux Server licensing settings.
class LinuxServerLicensingSettings {
  /// Licence Cost.
  final pulumi.Input<double> licenseCost;

  /// Creates a new [LinuxServerLicensingSettings].
  /// [licenseCost] Licence Cost.
  const LinuxServerLicensingSettings({
    required this.licenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
    };
  }

  factory LinuxServerLicensingSettings.fromMap(Map<String, dynamic> map) {
    return LinuxServerLicensingSettings(
      licenseCost: pulumi.Input.fromValue(map['licenseCost'] as double),
    );
  }
}
