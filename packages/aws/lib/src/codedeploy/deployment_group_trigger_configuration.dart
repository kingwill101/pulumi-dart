// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupTriggerConfiguration {
  /// The event type or types for which notifications are triggered. Some values that are supported: `DeploymentStart`, `DeploymentSuccess`, `DeploymentFailure`, `DeploymentStop`, `DeploymentRollback`, `InstanceStart`, `InstanceSuccess`, `InstanceFailure`.  See [the CodeDeploy documentation](http://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-create-trigger.html) for all possible values.
  final List<String> triggerEvents;

  /// The name of the notification trigger.
  final String triggerName;

  /// The ARN of the SNS topic through which notifications are sent.
  final String triggerTargetArn;

  /// Creates a new [DeploymentGroupTriggerConfiguration].
  /// [triggerEvents] The event type or types for which notifications are triggered. Some values that are supported: `DeploymentStart`, `DeploymentSuccess`, `DeploymentFailure`, `DeploymentStop`, `DeploymentRollback`, `InstanceStart`, `InstanceSuccess`, `InstanceFailure`.  See [the CodeDeploy documentation](http://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-create-trigger.html) for all possible values.
  /// [triggerName] The name of the notification trigger.
  /// [triggerTargetArn] The ARN of the SNS topic through which notifications are sent.
  DeploymentGroupTriggerConfiguration({
    required this.triggerEvents,
    required this.triggerName,
    required this.triggerTargetArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['triggerEvents'] = triggerEvents;
    map['triggerName'] = triggerName;
    map['triggerTargetArn'] = triggerTargetArn;
    return map;
  }

  factory DeploymentGroupTriggerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupTriggerConfiguration(
      triggerEvents: (map['triggerEvents'] as List).cast<String>(),
      triggerName: map['triggerName'] as String,
      triggerTargetArn: map['triggerTargetArn'] as String,
    );
  }
}
