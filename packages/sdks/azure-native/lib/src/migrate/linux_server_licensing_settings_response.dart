// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linux Server licensing settings.
class LinuxServerLicensingSettingsResponse {
  /// Licence Cost.
  final pulumi.Input<double> licenseCost;

  /// Creates a new [LinuxServerLicensingSettingsResponse].
  /// [licenseCost] Licence Cost.
  const LinuxServerLicensingSettingsResponse({
    required this.licenseCost,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
    };
  }

  factory LinuxServerLicensingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LinuxServerLicensingSettingsResponse(
      licenseCost: pulumi.Input.fromValue(map['licenseCost'] as double),
    );
  }
}
