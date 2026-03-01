// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeploymentAlarms
class DeploymentAlarms {
  /// One or more CloudWatch alarm names. Use a ',' to separate the alarms.
  final List<String>? alarmNames;
  /// Determines whether to use the CloudWatch alarm option in the service deployment process.
  final bool? enable;
  /// Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final bool? rollback;

  /// Creates a new [DeploymentAlarms].
  /// [alarmNames] One or more CloudWatch alarm names. Use a ',' to separate the alarms.
  /// [enable] Determines whether to use the CloudWatch alarm option in the service deployment process.
  /// [rollback] Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  DeploymentAlarms({
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

  factory DeploymentAlarms.fromMap(Map<String, dynamic> map) {
    return DeploymentAlarms(
      alarmNames: map['alarmNames'] == null ? null : (map['alarmNames'] as List).cast<String>(),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      rollback: map['rollback'] == null ? null : map['rollback'] as bool,
    );
  }
}

