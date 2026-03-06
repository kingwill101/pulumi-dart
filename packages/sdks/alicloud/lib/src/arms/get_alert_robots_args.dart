// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_alert_robots_get_alert_robots_args_doc}
/// Arguments for getAlertRobots.
/// {@endtemplate}
/// {@macro pulumi_arms_get_alert_robots_get_alert_robots_args_doc}
class GetAlertRobotsArgs {
  /// The robot name.
  final pulumi.Input<String>? alertRobotName;
  /// A list of Alert Robot IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Alert Robot name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The robot type.
  final pulumi.Input<String>? robotType;

  /// Creates a new [GetAlertRobotsArgs].
  /// [alertRobotName] The robot name.
  /// [ids] A list of Alert Robot IDs.
  /// [nameRegex] A regex string to filter results by Alert Robot name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [robotType] The robot type.
  const GetAlertRobotsArgs({
    this.alertRobotName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.robotType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRobotName': ?alertRobotName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'robotType': ?robotType,
    };
  }

  factory GetAlertRobotsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertRobotsArgs(
      alertRobotName: (() { final guardedValue = map['alertRobotName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      robotType: (() { final guardedValue = map['robotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

