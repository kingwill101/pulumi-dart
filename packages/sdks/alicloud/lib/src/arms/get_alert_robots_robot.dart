// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertRobotsRobot {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;

  /// Specifies whether the alert robot receives daily notifications.
  final pulumi.Input<String> dailyNoc;

  /// The time of the daily notification.
  final pulumi.Input<String> dailyNocTime;

  /// The ID of the Alert Robot.
  final pulumi.Input<String> id;

  /// The webhook url of the robot.
  final pulumi.Input<String> robotAddr;

  /// The id of the robot.
  final pulumi.Input<String> robotId;

  /// The name of the robot.
  final pulumi.Input<String> robotName;

  /// The robot type.
  final pulumi.Input<String> robotType;

  /// Creates a new [GetAlertRobotsRobot].
  /// [createTime] The creation time of the resource.
  /// [dailyNoc] Specifies whether the alert robot receives daily notifications.
  /// [dailyNocTime] The time of the daily notification.
  /// [id] The ID of the Alert Robot.
  /// [robotAddr] The webhook url of the robot.
  /// [robotId] The id of the robot.
  /// [robotName] The name of the robot.
  /// [robotType] The robot type.
  GetAlertRobotsRobot({
    required this.createTime,
    required this.dailyNoc,
    required this.dailyNocTime,
    required this.id,
    required this.robotAddr,
    required this.robotId,
    required this.robotName,
    required this.robotType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dailyNoc': dailyNoc,
      'dailyNocTime': dailyNocTime,
      'id': id,
      'robotAddr': robotAddr,
      'robotId': robotId,
      'robotName': robotName,
      'robotType': robotType,
    };
  }

  factory GetAlertRobotsRobot.fromMap(Map<String, dynamic> map) {
    return GetAlertRobotsRobot(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dailyNoc: pulumi.Input.fromValue(map['dailyNoc'] as String),
      dailyNocTime: pulumi.Input.fromValue(map['dailyNocTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      robotAddr: pulumi.Input.fromValue(map['robotAddr'] as String),
      robotId: pulumi.Input.fromValue(map['robotId'] as String),
      robotName: pulumi.Input.fromValue(map['robotName'] as String),
      robotType: pulumi.Input.fromValue(map['robotType'] as String),
    );
  }
}
