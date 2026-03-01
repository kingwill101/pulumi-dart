// ignore_for_file: unused_element, unnecessary_cast


class GetResolutionLinesLine {
  final String lineCode;
  /// Line display name.
  final String lineDisplayName;
  /// Line name.
  final String lineName;

  /// Creates a new [GetResolutionLinesLine].
  /// [lineCode] Required.
  /// [lineDisplayName] Line display name.
  /// [lineName] Line name.
  GetResolutionLinesLine({
    required this.lineCode,
    required this.lineDisplayName,
    required this.lineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lineCode': lineCode,
      'lineDisplayName': lineDisplayName,
      'lineName': lineName,
    };
  }

  factory GetResolutionLinesLine.fromMap(Map<String, dynamic> map) {
    return GetResolutionLinesLine(
      lineCode: map['lineCode'] as String,
      lineDisplayName: map['lineDisplayName'] as String,
      lineName: map['lineName'] as String,
    );
  }
}

