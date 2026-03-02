// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertRobot resources.
class AlertRobotState {
  /// The name of the resource.
  final pulumi.Input<String>? alertRobotName;
  /// Specifies whether the alert robot receives daily notifications. Valid values: `true`: receives daily notifications. `false`: does not receive daily notifications, default to `false`.
  final pulumi.Input<bool>? dailyNoc;
  /// The time of the daily notification.
  final pulumi.Input<String>? dailyNocTime;
  /// The webhook url of the robot.
  final pulumi.Input<String>? robotAddr;
  /// The type of the robot, Valid values: `wechat`, `dingding`, `feishu`.
  final pulumi.Input<String>? robotType;

  /// Creates a new [AlertRobotState].
  /// [alertRobotName] The name of the resource.
  /// [dailyNoc] Specifies whether the alert robot receives daily notifications. Valid values: `true`: receives daily notifications. `false`: does not receive daily notifications, default to `false`.
  /// [dailyNocTime] The time of the daily notification.
  /// [robotAddr] The webhook url of the robot.
  /// [robotType] The type of the robot, Valid values: `wechat`, `dingding`, `feishu`.
  AlertRobotState({
    this.alertRobotName,
    this.dailyNoc,
    this.dailyNocTime,
    this.robotAddr,
    this.robotType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRobotName': ?alertRobotName,
      'dailyNoc': ?dailyNoc,
      'dailyNocTime': ?dailyNocTime,
      'robotAddr': ?robotAddr,
      'robotType': ?robotType,
    };
  }

  factory AlertRobotState.fromMap(Map<String, dynamic> map) {
    return AlertRobotState(
      alertRobotName: map['alertRobotName'] == null ? null : (map['alertRobotName']! as String).input(),
      dailyNoc: map['dailyNoc'] == null ? null : (map['dailyNoc']! as bool).input(),
      dailyNocTime: map['dailyNocTime'] == null ? null : (map['dailyNocTime']! as String).input(),
      robotAddr: map['robotAddr'] == null ? null : (map['robotAddr']! as String).input(),
      robotType: map['robotType'] == null ? null : (map['robotType']! as String).input(),
    );
  }
}

