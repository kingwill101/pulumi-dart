// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail {
  /// The Oracle APEX Application Development version.
  final String apexVersion;

  /// The Oracle REST Data Services (ORDS) version.
  final String ordsVersion;

  GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail({
    required this.apexVersion,
    required this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apexVersion'] = apexVersion;
    map['ordsVersion'] = ordsVersion;
    return map;
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail(
      apexVersion: map['apexVersion'] as String,
      ordsVersion: map['ordsVersion'] as String,
    );
  }
}
