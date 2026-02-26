// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasePropertyApexDetail {
  /// The Oracle APEX Application Development version.
  final String apexVersion;

  /// The Oracle REST Data Services (ORDS) version.
  final String ordsVersion;

  GetAutonomousDatabasePropertyApexDetail({
    required this.apexVersion,
    required this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apexVersion'] = apexVersion;
    map['ordsVersion'] = ordsVersion;
    return map;
  }

  factory GetAutonomousDatabasePropertyApexDetail.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyApexDetail(
      apexVersion: map['apexVersion'] as String,
      ordsVersion: map['ordsVersion'] as String,
    );
  }
}
