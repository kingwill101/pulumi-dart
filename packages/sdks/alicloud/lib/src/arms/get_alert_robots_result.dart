// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_robots_robot.dart';

/// Result data returned by getAlertRobots.
class GetAlertRobotsResult {
  final String? alertRobotName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Alert Robot IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Alert Robot names.
  final List<String> names;
  final String? outputFile;
  /// The type of the robot.
  final String? robotType;
  /// A list of Arms Alert Robots. Each element contains the following attributes:
  final List<GetAlertRobotsRobot> robots;

  /// Creates a new [GetAlertRobotsResult].
  /// [alertRobotName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Alert Robot IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Alert Robot names.
  /// [outputFile] Optional.
  /// [robotType] The type of the robot.
  /// [robots] A list of Arms Alert Robots. Each element contains the following attributes:
  GetAlertRobotsResult({
    this.alertRobotName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.robotType,
    required this.robots,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRobotName': ?alertRobotName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'robotType': ?robotType,
      'robots': pulumi.Input.encodeList<GetAlertRobotsRobot, Map<String, dynamic>>(robots, (value) => value.toMap()),
    };
  }

  factory GetAlertRobotsResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRobotsResult(
      alertRobotName: map['alertRobotName'] == null ? null : map['alertRobotName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      robotType: map['robotType'] == null ? null : map['robotType'] as String,
      robots: pulumi.Input.decodeList<GetAlertRobotsRobot>(map['robots'], (value) => GetAlertRobotsRobot.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

