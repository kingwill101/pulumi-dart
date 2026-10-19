// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseDbToolsDetail {
  /// Compute capacity allocated to the database tool.
  final pulumi.Input<double> computeCount;
  /// Whether the database tool is enabled.
  final pulumi.Input<bool> isEnabled;
  /// Maximum idle time before the tool is shut down.
  final pulumi.Input<int> maxIdleTimeInMinutes;
  /// Database tool name.
  final pulumi.Input<String> name;

  /// Creates a new [GetAutonomousDatabaseDbToolsDetail].
  /// [computeCount] Compute capacity allocated to the database tool.
  /// [isEnabled] Whether the database tool is enabled.
  /// [maxIdleTimeInMinutes] Maximum idle time before the tool is shut down.
  /// [name] Database tool name.
  const GetAutonomousDatabaseDbToolsDetail({
    required this.computeCount,
    required this.isEnabled,
    required this.maxIdleTimeInMinutes,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCount': computeCount,
      'isEnabled': isEnabled,
      'maxIdleTimeInMinutes': maxIdleTimeInMinutes,
      'name': name,
    };
  }

  factory GetAutonomousDatabaseDbToolsDetail.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseDbToolsDetail(
      computeCount: pulumi.Input.fromValue((map['computeCount'] as num).toDouble()),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      maxIdleTimeInMinutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxIdleTimeInMinutes'])),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
