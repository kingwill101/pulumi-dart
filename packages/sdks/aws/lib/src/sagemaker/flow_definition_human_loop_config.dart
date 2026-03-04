// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_definition_human_loop_config_public_workforce_task_price.dart';

class FlowDefinitionHumanLoopConfig {
  /// The Amazon Resource Name (ARN) of the human task user interface.
  final pulumi.Input<String> humanTaskUiArn;

  /// Defines the amount of money paid to an Amazon Mechanical Turk worker for each task performed. See Public Workforce Task Price details below.
  final pulumi.Input<FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice>?
  publicWorkforceTaskPrice;

  /// The length of time that a task remains available for review by human workers. Valid value range between `1` and `864000`.
  final pulumi.Input<int>? taskAvailabilityLifetimeInSeconds;

  /// The number of distinct workers who will perform the same task on each object. Valid value range between `1` and `3`.
  final pulumi.Input<int> taskCount;

  /// A description for the human worker task.
  final pulumi.Input<String> taskDescription;

  /// An array of keywords used to describe the task so that workers can discover the task.
  final pulumi.Input<List<String>>? taskKeywords;

  /// The amount of time that a worker has to complete a task. The default value is `3600` seconds.
  final pulumi.Input<int>? taskTimeLimitInSeconds;

  /// A title for the human worker task.
  final pulumi.Input<String> taskTitle;

  /// The Amazon Resource Name (ARN) of the human task user interface. Amazon Resource Name (ARN) of a team of workers. For Public workforces see [AWS Docs](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-management-public.html).
  final pulumi.Input<String> workteamArn;

  /// Creates a new [FlowDefinitionHumanLoopConfig].
  /// [humanTaskUiArn] The Amazon Resource Name (ARN) of the human task user interface.
  /// [publicWorkforceTaskPrice] Defines the amount of money paid to an Amazon Mechanical Turk worker for each task performed. See Public Workforce Task Price details below.
  /// [taskAvailabilityLifetimeInSeconds] The length of time that a task remains available for review by human workers. Valid value range between `1` and `864000`.
  /// [taskCount] The number of distinct workers who will perform the same task on each object. Valid value range between `1` and `3`.
  /// [taskDescription] A description for the human worker task.
  /// [taskKeywords] An array of keywords used to describe the task so that workers can discover the task.
  /// [taskTimeLimitInSeconds] The amount of time that a worker has to complete a task. The default value is `3600` seconds.
  /// [taskTitle] A title for the human worker task.
  /// [workteamArn] The Amazon Resource Name (ARN) of the human task user interface. Amazon Resource Name (ARN) of a team of workers. For Public workforces see [AWS Docs](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-management-public.html).
  FlowDefinitionHumanLoopConfig({
    required this.humanTaskUiArn,
    this.publicWorkforceTaskPrice,
    this.taskAvailabilityLifetimeInSeconds,
    required this.taskCount,
    required this.taskDescription,
    this.taskKeywords,
    this.taskTimeLimitInSeconds,
    required this.taskTitle,
    required this.workteamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanTaskUiArn': humanTaskUiArn,
      'publicWorkforceTaskPrice':
          ?pulumi.Input.mapOptionalInputValue<
            FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice,
            Map<String, dynamic>
          >(publicWorkforceTaskPrice, (value) => value.toMap()),
      'taskAvailabilityLifetimeInSeconds': ?taskAvailabilityLifetimeInSeconds,
      'taskCount': taskCount,
      'taskDescription': taskDescription,
      'taskKeywords': ?taskKeywords,
      'taskTimeLimitInSeconds': ?taskTimeLimitInSeconds,
      'taskTitle': taskTitle,
      'workteamArn': workteamArn,
    };
  }

  factory FlowDefinitionHumanLoopConfig.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfig(
      humanTaskUiArn: pulumi.Input.fromValue(map['humanTaskUiArn'] as String),
      publicWorkforceTaskPrice: (() {
        final guardedValue = map['publicWorkforceTaskPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskAvailabilityLifetimeInSeconds: (() {
        final guardedValue = map['taskAvailabilityLifetimeInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      taskCount: pulumi.Input.fromValue(map['taskCount'] as int),
      taskDescription: pulumi.Input.fromValue(map['taskDescription'] as String),
      taskKeywords: (() {
        final guardedValue = map['taskKeywords'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      taskTimeLimitInSeconds: (() {
        final guardedValue = map['taskTimeLimitInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      taskTitle: pulumi.Input.fromValue(map['taskTitle'] as String),
      workteamArn: pulumi.Input.fromValue(map['workteamArn'] as String),
    );
  }
}
