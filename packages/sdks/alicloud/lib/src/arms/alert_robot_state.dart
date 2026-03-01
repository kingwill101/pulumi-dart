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
    pulumi.Output<String>? alertRobotName,
    pulumi.Output<bool>? dailyNoc,
    pulumi.Output<String>? dailyNocTime,
    pulumi.Output<String>? robotAddr,
    pulumi.Output<String>? robotType,
  }) :
      alertRobotName = pulumi.Input.asOptionalInput<String>(alertRobotName),
      dailyNoc = pulumi.Input.asOptionalInput<bool>(dailyNoc),
      dailyNocTime = pulumi.Input.asOptionalInput<String>(dailyNocTime),
      robotAddr = pulumi.Input.asOptionalInput<String>(robotAddr),
      robotType = pulumi.Input.asOptionalInput<String>(robotType);

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
      alertRobotName: map['alertRobotName'] == null ? null : pulumi.Output.create<String>(map['alertRobotName'] as String),
      dailyNoc: map['dailyNoc'] == null ? null : pulumi.Output.create<bool>(map['dailyNoc'] as bool),
      dailyNocTime: map['dailyNocTime'] == null ? null : pulumi.Output.create<String>(map['dailyNocTime'] as String),
      robotAddr: map['robotAddr'] == null ? null : pulumi.Output.create<String>(map['robotAddr'] as String),
      robotType: map['robotType'] == null ? null : pulumi.Output.create<String>(map['robotType'] as String),
    );
  }
}

