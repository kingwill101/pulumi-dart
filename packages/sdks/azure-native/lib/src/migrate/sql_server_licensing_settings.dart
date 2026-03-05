// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server licensing settings.
class SqlServerLicensingSettings {
  /// Licence cost.
  final pulumi.Input<double> licenseCost;
  /// Software assurance (SA) cost.
  final pulumi.Input<double> softwareAssuranceCost;
  /// SQL Server version.
  final pulumi.Input<String> version;

  /// Creates a new [SqlServerLicensingSettings].
  /// [licenseCost] Licence cost.
  /// [softwareAssuranceCost] Software assurance (SA) cost.
  /// [version] SQL Server version.
  SqlServerLicensingSettings({
    required this.licenseCost,
    required this.softwareAssuranceCost,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'licenseCost': licenseCost,
      'softwareAssuranceCost': softwareAssuranceCost,
      'version': version,
    };
  }

  factory SqlServerLicensingSettings.fromMap(Map<String, dynamic> map) {
    return SqlServerLicensingSettings(
      licenseCost: pulumi.Input.fromValue(map['licenseCost'] as double),
      softwareAssuranceCost: pulumi.Input.fromValue(map['softwareAssuranceCost'] as double),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

