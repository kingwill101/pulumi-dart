// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasePropertyApexDetail {
  /// The Oracle APEX Application Development version.
  final String apexVersion;

  /// The Oracle REST Data Services (ORDS) version.
  final String ordsVersion;

  /// Creates a new [GetAutonomousDatabasePropertyApexDetail].
  /// [apexVersion] The Oracle APEX Application Development version.
  /// [ordsVersion] The Oracle REST Data Services (ORDS) version.
  GetAutonomousDatabasePropertyApexDetail({
    required this.apexVersion,
    required this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexVersion': apexVersion,
      'ordsVersion': ordsVersion,
    };
  }

  factory GetAutonomousDatabasePropertyApexDetail.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAutonomousDatabasePropertyApexDetail(
      apexVersion: map['apexVersion'] as String,
      ordsVersion: map['ordsVersion'] as String,
    );
  }
}
