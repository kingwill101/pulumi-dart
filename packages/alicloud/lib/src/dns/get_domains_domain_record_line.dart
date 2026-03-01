// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainRecordLine {
  final String fatherCode;
  final String lineCode;
  final String lineDisplayName;
  final String lineName;

  /// Creates a new [GetDomainsDomainRecordLine].
  /// [fatherCode] Required.
  /// [lineCode] Required.
  /// [lineDisplayName] Required.
  /// [lineName] Required.
  GetDomainsDomainRecordLine({
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

  factory GetDomainsDomainRecordLine.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainRecordLine(
      fatherCode: map['fatherCode'] as String,
      lineCode: map['lineCode'] as String,
      lineDisplayName: map['lineDisplayName'] as String,
      lineName: map['lineName'] as String,
    );
  }
}

