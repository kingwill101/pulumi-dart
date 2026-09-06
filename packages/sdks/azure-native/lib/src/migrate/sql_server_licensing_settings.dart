// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server licensing settings.
class SqlServerLicensingSettings {
  /// Licence cost.
  final pulumi.Input<double> licenseCost;
  /// Software assurance (SA) cost.
  final pulumi.Input<double> softwareAssuranceCost;
  /// SQL Server version.
  final pulumi.Input<dynamic> version;

  /// Creates a new [SqlServerLicensingSettings].
  /// [licenseCost] Licence cost.
  /// [softwareAssuranceCost] Software assurance (SA) cost.
  /// [version] SQL Server version.
  const SqlServerLicensingSettings({
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
      licenseCost: pulumi.Input.fromValue((map['licenseCost'] as num).toDouble()),
      softwareAssuranceCost: pulumi.Input.fromValue((map['softwareAssuranceCost'] as num).toDouble()),
      version: pulumi.Input.fromValue(map['version']),
    );
  }
}
