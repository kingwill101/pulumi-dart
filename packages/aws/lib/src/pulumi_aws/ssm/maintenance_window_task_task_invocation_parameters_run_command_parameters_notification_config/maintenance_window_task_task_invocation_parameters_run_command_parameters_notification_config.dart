// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig {
  /// An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.
  final String? notificationArn;

  /// The different events for which you can receive notifications. Valid values: `All`, `InProgress`, `Success`, `TimedOut`, `Cancelled`, and `Failed`
  final List<String>? notificationEvents;

  /// When specified with `Command`, receive notification when the status of a command changes. When specified with `Invocation`, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: `Command` and `Invocation`
  final String? notificationType;

  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig({
    this.notificationArn,
    this.notificationEvents,
    this.notificationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notificationArnValue = notificationArn;
    if (notificationArnValue != null) {
      map['notificationArn'] = notificationArnValue;
    }
    final notificationEventsValue = notificationEvents;
    if (notificationEventsValue != null) {
      map['notificationEvents'] = notificationEventsValue;
    }
    final notificationTypeValue = notificationType;
    if (notificationTypeValue != null) {
      map['notificationType'] = notificationTypeValue;
    }
    return map;
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig(
      notificationArn: map['notificationArn'] == null
          ? null
          : map['notificationArn'] as String,
      notificationEvents: map['notificationEvents'] == null
          ? null
          : (map['notificationEvents'] as List).cast<String>(),
      notificationType: map['notificationType'] == null
          ? null
          : map['notificationType'] as String,
    );
  }
}
