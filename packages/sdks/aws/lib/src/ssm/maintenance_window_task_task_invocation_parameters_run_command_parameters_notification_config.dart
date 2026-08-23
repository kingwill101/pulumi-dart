// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig {
  /// An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.
  final pulumi.Input<String>? notificationArn;
  /// The different events for which you can receive notifications. Valid values: `All`, `InProgress`, `Success`, `TimedOut`, `Cancelled`, and `Failed`
  final pulumi.Input<List<String>>? notificationEvents;
  /// When specified with `Command`, receive notification when the status of a command changes. When specified with `Invocation`, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: `Command` and `Invocation`
  final pulumi.Input<String>? notificationType;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig].
  /// [notificationArn] An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.
  /// [notificationEvents] The different events for which you can receive notifications. Valid values: `All`, `InProgress`, `Success`, `TimedOut`, `Cancelled`, and `Failed`
  /// [notificationType] When specified with `Command`, receive notification when the status of a command changes. When specified with `Invocation`, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: `Command` and `Invocation`
  const MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersNotificationConfig({
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
      notificationArn: (() { final guardedValue = map['notificationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationEvents: (() { final guardedValue = map['notificationEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notificationType: (() { final guardedValue = map['notificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
