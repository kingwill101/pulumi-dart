// ignore_for_file: unused_element, unnecessary_cast


class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig {
  /// An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.
  final String? notificationArn;
  /// The different events for which you can receive notifications. Valid values: `All`, `InProgress`, `Success`, `TimedOut`, `Cancelled`, and `Failed`
  final List<String>? notificationEvents;
  /// When specified with `Command`, receive notification when the status of a command changes. When specified with `Invocation`, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: `Command` and `Invocation`
  final String? notificationType;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig].
  /// [notificationArn] An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.
  /// [notificationEvents] The different events for which you can receive notifications. Valid values: `All`, `InProgress`, `Success`, `TimedOut`, `Cancelled`, and `Failed`
  /// [notificationType] When specified with `Command`, receive notification when the status of a command changes. When specified with `Invocation`, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: `Command` and `Invocation`
  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig({
    this.notificationArn,
    this.notificationEvents,
    this.notificationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationArn': ?notificationArn,
      'notificationEvents': ?notificationEvents,
      'notificationType': ?notificationType,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig(
      notificationArn: map['notificationArn'] == null ? null : map['notificationArn'] as String,
      notificationEvents: map['notificationEvents'] == null ? null : (map['notificationEvents'] as List).cast<String>(),
      notificationType: map['notificationType'] == null ? null : map['notificationType'] as String,
    );
  }
}

