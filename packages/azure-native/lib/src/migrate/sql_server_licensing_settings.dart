// ignore_for_file: unused_element, unnecessary_cast


/// SQL Server licensing settings.
class SqlServerLicensingSettings {
  /// Licence cost.
  final double licenseCost;
  /// Software assurance (SA) cost.
  final double softwareAssuranceCost;
  /// SQL Server version.
  final String version;

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
      licenseCost: map['licenseCost'] as double,
      softwareAssuranceCost: map['softwareAssuranceCost'] as double,
      version: map['version'] as String,
    );
  }
}

