// ignore_for_file: unused_element, unnecessary_cast

class ServiceAlarms {
  /// One or more CloudWatch alarm names.
  final List<String> alarmNames;

  /// Whether to use the CloudWatch alarm option in the service deployment process.
  final bool enable;

  /// Whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
  final bool rollback;

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
    final map = <String, dynamic>{};
    map['alarmNames'] = alarmNames;
    map['enable'] = enable;
    map['rollback'] = rollback;
    return map;
  }

  factory ServiceAlarms.fromMap(Map<String, dynamic> map) {
    return ServiceAlarms(
      alarmNames: (map['alarmNames'] as List).cast<String>(),
      enable: map['enable'] as bool,
      rollback: map['rollback'] as bool,
    );
  }
}
