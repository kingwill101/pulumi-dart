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
      licenseCost: pulumi.Input.fromValue((map['licenseCost'] as num).toDouble()),
      licensesPerCore: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['licensesPerCore'])),
      softwareAssuranceCost: pulumi.Input.fromValue((map['softwareAssuranceCost'] as num).toDouble()),
    );
  }
}
