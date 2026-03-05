// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupTriggerConfiguration {
  /// The event type or types for which notifications are triggered. Some values that are supported: `DeploymentStart`, `DeploymentSuccess`, `DeploymentFailure`, `DeploymentStop`, `DeploymentRollback`, `InstanceStart`, `InstanceSuccess`, `InstanceFailure`.  See [the CodeDeploy documentation](http://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-create-trigger.html) for all possible values.
  final pulumi.Input<List<String>> triggerEvents;
  /// The name of the notification trigger.
  final pulumi.Input<String> triggerName;
  /// The ARN of the SNS topic through which notifications are sent.
  final pulumi.Input<String> triggerTargetArn;

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
    return <String, dynamic>{
      'triggerEvents': triggerEvents,
      'triggerName': triggerName,
      'triggerTargetArn': triggerTargetArn,
    };
  }

  factory DeploymentGroupTriggerConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupTriggerConfiguration(
      triggerEvents: pulumi.Input.fromValue((map['triggerEvents'] as List).cast<String>()),
      triggerName: pulumi.Input.fromValue(map['triggerName'] as String),
      triggerTargetArn: pulumi.Input.fromValue(map['triggerTargetArn'] as String),
    );
  }
}

