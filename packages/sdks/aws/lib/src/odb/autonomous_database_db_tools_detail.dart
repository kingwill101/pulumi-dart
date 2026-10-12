// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseDbToolsDetail {
  /// Compute capacity allocated to the database tool.
  final pulumi.Input<double?>? computeCount;
  /// Whether the database tool is enabled.
  final pulumi.Input<bool?>? isEnabled;
  /// Maximum idle time before the tool is shut down.
  final pulumi.Input<int?>? maxIdleTimeInMinutes;
  /// Database tool name.
  final pulumi.Input<String?>? name;

  /// Creates a new [AutonomousDatabaseDbToolsDetail].
  /// [computeCount] Compute capacity allocated to the database tool.
  /// [isEnabled] Whether the database tool is enabled.
  /// [maxIdleTimeInMinutes] Maximum idle time before the tool is shut down.
  /// [name] Database tool name.
  const AutonomousDatabaseDbToolsDetail({
    this.computeCount,
    this.isEnabled,
    this.maxIdleTimeInMinutes,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeCount': ?computeCount,
      'isEnabled': ?isEnabled,
      'maxIdleTimeInMinutes': ?maxIdleTimeInMinutes,
      'name': ?name,
    };
  }

  factory AutonomousDatabaseDbToolsDetail.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseDbToolsDetail(
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxIdleTimeInMinutes: (() { final guardedValue = map['maxIdleTimeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
