// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessStrategiesStrategyLine {
  /// The code of the source region group.
  final pulumi.Input<String> groupCode;
  /// The name of the source region group.
  final pulumi.Input<String> groupName;
  /// The line code of the source region.
  final pulumi.Input<String> lineCode;
  /// The line name of the source region.
  final pulumi.Input<String> lineName;

  /// Creates a new [GetAccessStrategiesStrategyLine].
  /// [groupCode] The code of the source region group.
  /// [groupName] The name of the source region group.
  /// [lineCode] The line code of the source region.
  /// [lineName] The line name of the source region.
  const GetAccessStrategiesStrategyLine({
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
      groupCode: pulumi.Input.fromValue(map['groupCode'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      lineCode: pulumi.Input.fromValue(map['lineCode'] as String),
      lineName: pulumi.Input.fromValue(map['lineName'] as String),
    );
  }
}

