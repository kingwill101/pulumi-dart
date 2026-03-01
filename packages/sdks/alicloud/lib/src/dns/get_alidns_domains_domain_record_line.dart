// ignore_for_file: unused_element, unnecessary_cast


class GetAlidnsDomainsDomainRecordLine {
  /// The code of the parent line, or empty if there is none.
  final String fatherCode;
  /// Sub-line Code.
  final String lineCode;
  /// Parent line display name.
  final String lineDisplayName;
  /// Sub-line display name.
  final String lineName;

  /// Creates a new [GetAlidnsDomainsDomainRecordLine].
  /// [fatherCode] The code of the parent line, or empty if there is none.
  /// [lineCode] Sub-line Code.
  /// [lineDisplayName] Parent line display name.
  /// [lineName] Sub-line display name.
  GetAlidnsDomainsDomainRecordLine({
    required this.fatherCode,
    required this.lineCode,
    required this.lineDisplayName,
    required this.lineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fatherCode': fatherCode,
      'lineCode': lineCode,
      'lineDisplayName': lineDisplayName,
      'lineName': lineName,
    };
  }

  factory GetAlidnsDomainsDomainRecordLine.fromMap(Map<String, dynamic> map) {
    return GetAlidnsDomainsDomainRecordLine(
      fatherCode: map['fatherCode'] as String,
      lineCode: map['lineCode'] as String,
      lineDisplayName: map['lineDisplayName'] as String,
      lineName: map['lineName'] as String,
    );
  }
}

