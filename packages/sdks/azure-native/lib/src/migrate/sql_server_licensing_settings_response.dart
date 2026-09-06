// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server licensing settings.
class SqlServerLicensingSettingsResponse {
  /// Licence cost.
  final pulumi.Input<double> licenseCost;
  /// Software assurance (SA) cost.
  final pulumi.Input<double> softwareAssuranceCost;
  /// SQL Server version.
  final pulumi.Input<String> version;

  /// Creates a new [SqlServerLicensingSettingsResponse].
  /// [licenseCost] Licence cost.
  /// [softwareAssuranceCost] Software assurance (SA) cost.
  /// [version] SQL Server version.
  const SqlServerLicensingSettingsResponse({
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

  factory SqlServerLicensingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerLicensingSettingsResponse(
      licenseCost: pulumi.Input.fromValue((map['licenseCost'] as num).toDouble()),
      softwareAssuranceCost: pulumi.Input.fromValue((map['softwareAssuranceCost'] as num).toDouble()),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
