// ignore_for_file: unused_element, unnecessary_cast


class AccessStrategyLine {
  /// The line code of the source region.
  final String? lineCode;

  /// Creates a new [AccessStrategyLine].
  /// [lineCode] The line code of the source region.
  AccessStrategyLine({
    this.lineCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lineCode': ?lineCode,
    };
  }

  factory AccessStrategyLine.fromMap(Map<String, dynamic> map) {
    return AccessStrategyLine(
      lineCode: map['lineCode'] == null ? null : map['lineCode'] as String,
    );
  }
}

