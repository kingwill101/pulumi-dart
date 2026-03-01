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
  GetAlertRobotsArgs({
    String? alertRobotName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? robotType,
  }) :
      alertRobotName = pulumi.Input.asOptionalInput<String>(alertRobotName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      robotType = pulumi.Input.asOptionalInput<String>(robotType);

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
      alertRobotName: map['alertRobotName'] == null ? null : map['alertRobotName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      robotType: map['robotType'] == null ? null : map['robotType'] as String,
    );
  }
}

