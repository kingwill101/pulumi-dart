// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Windows Server licensing settings.
class WindowsServerLicensingSettings {
  /// Licence Cost.
  final pulumi.Input<double> licenseCost;
  /// Licenses per core.
  final pulumi.Input<int> licensesPerCore;
  /// Software assurance (SA) cost.
  final pulumi.Input<double> softwareAssuranceCost;

  /// Creates a new [WindowsServerLicensingSettings].
  /// [licenseCost] Licence Cost.
  /// [licensesPerCore] Licenses per core.
  /// [softwareAssuranceCost] Software assurance (SA) cost.
  const WindowsServerLicensingSettings({
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
      licenseCost: pulumi.Input.fromValue(map['licenseCost'] as double),
      licensesPerCore: pulumi.Input.fromValue(map['licensesPerCore'] as int),
      softwareAssuranceCost: pulumi.Input.fromValue(map['softwareAssuranceCost'] as double),
    );
  }
}

