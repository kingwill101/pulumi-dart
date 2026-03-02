// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceAlarms {
  /// One or more CloudWatch alarm names.
  final pulumi.Input<List<String>> alarmNames;
  /// Whether to use the CloudWatch alarm option in the service deployment process.
  final pulumi.Input<bool> enable;
  /// Whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final pulumi.Input<bool> rollback;

  /// Creates a new [ServiceAlarms].
  /// [alarmNames] One or more CloudWatch alarm names.
  /// [enable] Whether to use the CloudWatch alarm option in the service deployment process.
  /// [rollback] Whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  ServiceAlarms({
    required this.alarmNames,
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmNames': alarmNames,
      'enable': enable,
      'rollback': rollback,
    };
  }

  factory ServiceAlarms.fromMap(Map<String, dynamic> map) {
    return ServiceAlarms(
      alarmNames: ((map['alarmNames'] as List).cast<String>()).input(),
      enable: (map['enable'] as bool).input(),
      rollback: (map['rollback'] as bool).input(),
    );
  }
}

