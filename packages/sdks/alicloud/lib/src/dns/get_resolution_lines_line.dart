// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResolutionLinesLine {
  final pulumi.Input<String> lineCode;

  /// Line display name.
  final pulumi.Input<String> lineDisplayName;

  /// Line name.
  final pulumi.Input<String> lineName;

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
      lineCode: pulumi.Input.fromValue(map['lineCode'] as String),
      lineDisplayName: pulumi.Input.fromValue(map['lineDisplayName'] as String),
      lineName: pulumi.Input.fromValue(map['lineName'] as String),
    );
  }
}
