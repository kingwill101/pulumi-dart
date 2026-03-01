// ignore_for_file: unused_element, unnecessary_cast


/// SQL Server licensing settings.
class SqlServerLicensingSettingsResponse {
  /// Licence cost.
  final double licenseCost;
  /// Software assurance (SA) cost.
  final double softwareAssuranceCost;
  /// SQL Server version.
  final String version;

  /// Creates a new [SqlServerLicensingSettingsResponse].
  /// [licenseCost] Licence cost.
  /// [softwareAssuranceCost] Software assurance (SA) cost.
  /// [version] SQL Server version.
  SqlServerLicensingSettingsResponse({
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
      licenseCost: map['licenseCost'] as double,
      softwareAssuranceCost: map['softwareAssuranceCost'] as double,
      version: map['version'] as String,
    );
  }
}

