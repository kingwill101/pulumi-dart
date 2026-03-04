// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_alert_robot_alert_robot_args_doc}
/// The set of arguments for AlertRobot.
/// {@endtemplate}
/// {@macro pulumi_arms_alert_robot_alert_robot_args_doc}
class AlertRobotArgs {
  /// The name of the resource.
  final pulumi.Input<String> alertRobotName;

  /// Specifies whether the alert robot receives daily notifications. Valid values: `true`: receives daily notifications. `false`: does not receive daily notifications, default to `false`.
  final pulumi.Input<bool>? dailyNoc;

  /// The time of the daily notification.
  final pulumi.Input<String>? dailyNocTime;

  /// The webhook url of the robot.
  final pulumi.Input<String> robotAddr;

  /// The type of the robot, Valid values: `wechat`, `dingding`, `feishu`.
  final pulumi.Input<String> robotType;

  /// Creates a new [AlertRobotArgs].
  /// [alertRobotName] The name of the resource.
  /// [dailyNoc] Specifies whether the alert robot receives daily notifications. Valid values: `true`: receives daily notifications. `false`: does not receive daily notifications, default to `false`.
  /// [dailyNocTime] The time of the daily notification.
  /// [robotAddr] The webhook url of the robot.
  /// [robotType] The type of the robot, Valid values: `wechat`, `dingding`, `feishu`.
  AlertRobotArgs({
    required this.alertRobotName,
    this.dailyNoc,
    this.dailyNocTime,
    required this.robotAddr,
    required this.robotType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRobotName': alertRobotName,
      'dailyNoc': ?dailyNoc,
      'dailyNocTime': ?dailyNocTime,
      'robotAddr': robotAddr,
      'robotType': robotType,
    };
  }

  factory AlertRobotArgs.fromMap(Map<String, dynamic> map) {
    return AlertRobotArgs(
      alertRobotName: pulumi.Input.fromValue(map['alertRobotName'] as String),
      dailyNoc: (() {
        final guardedValue = map['dailyNoc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dailyNocTime: (() {
        final guardedValue = map['dailyNocTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      robotAddr: pulumi.Input.fromValue(map['robotAddr'] as String),
      robotType: pulumi.Input.fromValue(map['robotType'] as String),
    );
  }
}
