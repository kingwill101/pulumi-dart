// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail {
  /// The Oracle APEX Application Development version.
  final String apexVersion;

  /// The Oracle REST Data Services (ORDS) version.
  final String ordsVersion;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail].
  /// [apexVersion] The Oracle APEX Application Development version.
  /// [ordsVersion] The Oracle REST Data Services (ORDS) version.
  GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail({
    required this.apexVersion,
    required this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexVersion': apexVersion,
      'ordsVersion': ordsVersion,
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail(
      apexVersion: map['apexVersion'] as String,
      ordsVersion: map['ordsVersion'] as String,
    );
  }
}
