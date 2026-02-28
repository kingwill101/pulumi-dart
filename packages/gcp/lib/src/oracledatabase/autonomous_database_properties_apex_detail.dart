// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesApexDetail {
  /// The Oracle APEX Application Development version.
  final String? apexVersion;

  /// The Oracle REST Data Services (ORDS) version.
  final String? ordsVersion;

  /// Creates a new [AutonomousDatabasePropertiesApexDetail].
  /// [apexVersion] The Oracle APEX Application Development version.
  /// [ordsVersion] The Oracle REST Data Services (ORDS) version.
  AutonomousDatabasePropertiesApexDetail({
    this.apexVersion,
    this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apexVersionValue = apexVersion;
    if (apexVersionValue != null) {
      map['apexVersion'] = apexVersionValue;
    }
    final ordsVersionValue = ordsVersion;
    if (ordsVersionValue != null) {
      map['ordsVersion'] = ordsVersionValue;
    }
    return map;
  }

  factory AutonomousDatabasePropertiesApexDetail.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesApexDetail(
      apexVersion:
          map['apexVersion'] == null ? null : map['apexVersion'] as String,
      ordsVersion:
          map['ordsVersion'] == null ? null : map['ordsVersion'] as String,
    );
  }
}
