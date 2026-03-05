// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DeploymentAlarms
class DeploymentAlarmsResponse {
  /// One or more CloudWatch alarm names. Use a ',' to separate the alarms.
  final pulumi.Input<List<String>>? alarmNames;
  /// Determines whether to use the CloudWatch alarm option in the service deployment process.
  final pulumi.Input<bool>? enable;
  /// Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final pulumi.Input<bool>? rollback;

  /// Creates a new [DeploymentAlarmsResponse].
  /// [alarmNames] One or more CloudWatch alarm names. Use a ',' to separate the alarms.
  /// [enable] Determines whether to use the CloudWatch alarm option in the service deployment process.
  /// [rollback] Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  DeploymentAlarmsResponse({
    this.alarmNames,
    this.enable,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmNames': ?alarmNames,
      'enable': ?enable,
      'rollback': ?rollback,
    };
  }

  factory DeploymentAlarmsResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentAlarmsResponse(
      alarmNames: (() { final guardedValue = map['alarmNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rollback: (() { final guardedValue = map['rollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

