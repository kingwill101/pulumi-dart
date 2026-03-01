// ignore_for_file: unused_element, unnecessary_cast


class GetAccessStrategiesStrategyLine {
  /// The code of the source region group.
  final String groupCode;
  /// The name of the source region group.
  final String groupName;
  /// The line code of the source region.
  final String lineCode;
  /// The line name of the source region.
  final String lineName;

  /// Creates a new [GetAccessStrategiesStrategyLine].
  /// [groupCode] The code of the source region group.
  /// [groupName] The name of the source region group.
  /// [lineCode] The line code of the source region.
  /// [lineName] The line name of the source region.
  GetAccessStrategiesStrategyLine({
    required this.groupCode,
    required this.groupName,
    required this.lineCode,
    required this.lineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupCode': groupCode,
      'groupName': groupName,
      'lineCode': lineCode,
      'lineName': lineName,
    };
  }

  factory GetAccessStrategiesStrategyLine.fromMap(Map<String, dynamic> map) {
    return GetAccessStrategiesStrategyLine(
      groupCode: map['groupCode'] as String,
      groupName: map['groupName'] as String,
      lineCode: map['lineCode'] as String,
      lineName: map['lineName'] as String,
    );
  }
}

