// ignore_for_file: unused_element, unnecessary_cast

import '../flow_definition_human_loop_config_public_workforce_task_price/flow_definition_human_loop_config_public_workforce_task_price.dart';

class FlowDefinitionHumanLoopConfig {
  /// The Amazon Resource Name (ARN) of the human task user interface.
  final String humanTaskUiArn;

  /// Defines the amount of money paid to an Amazon Mechanical Turk worker for each task performed. See Public Workforce Task Price details below.
  final FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice?
      publicWorkforceTaskPrice;

  /// The length of time that a task remains available for review by human workers. Valid value range between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`864000`" pulumi-lang-dotnet="`864000`" pulumi-lang-go="`864000`" pulumi-lang-python="`864000`" pulumi-lang-yaml="`864000`" pulumi-lang-java="`864000`">`864000`</span>.
  final int? taskAvailabilityLifetimeInSeconds;

  /// The number of distinct workers who will perform the same task on each object. Valid value range between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>.
  final int taskCount;

  /// A description for the human worker task.
  final String taskDescription;

  /// An array of keywords used to describe the task so that workers can discover the task.
  final List<String>? taskKeywords;

  /// The amount of time that a worker has to complete a task. The default value is <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span> seconds.
  final int? taskTimeLimitInSeconds;

  /// A title for the human worker task.
  final String taskTitle;

  /// The Amazon Resource Name (ARN) of the human task user interface. Amazon Resource Name (ARN) of a team of workers. For Public workforces see [AWS Docs](https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-management-public.html).
  final String workteamArn;

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
    final map = <String, dynamic>{};
    map['humanTaskUiArn'] = humanTaskUiArn;
    final publicWorkforceTaskPriceValue = publicWorkforceTaskPrice;
    if (publicWorkforceTaskPriceValue != null) {
      map['publicWorkforceTaskPrice'] = publicWorkforceTaskPriceValue.toMap();
    }
    final taskAvailabilityLifetimeInSecondsValue =
        taskAvailabilityLifetimeInSeconds;
    if (taskAvailabilityLifetimeInSecondsValue != null) {
      map['taskAvailabilityLifetimeInSeconds'] =
          taskAvailabilityLifetimeInSecondsValue;
    }
    map['taskCount'] = taskCount;
    map['taskDescription'] = taskDescription;
    final taskKeywordsValue = taskKeywords;
    if (taskKeywordsValue != null) {
      map['taskKeywords'] = taskKeywordsValue;
    }
    final taskTimeLimitInSecondsValue = taskTimeLimitInSeconds;
    if (taskTimeLimitInSecondsValue != null) {
      map['taskTimeLimitInSeconds'] = taskTimeLimitInSecondsValue;
    }
    map['taskTitle'] = taskTitle;
    map['workteamArn'] = workteamArn;
    return map;
  }

  factory FlowDefinitionHumanLoopConfig.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfig(
      humanTaskUiArn: map['humanTaskUiArn'] as String,
      publicWorkforceTaskPrice: map['publicWorkforceTaskPrice'] == null
          ? null
          : FlowDefinitionHumanLoopConfigPublicWorkforceTaskPrice.fromMap(
              (map['publicWorkforceTaskPrice'] as Map).cast<String, dynamic>()),
      taskAvailabilityLifetimeInSeconds:
          map['taskAvailabilityLifetimeInSeconds'] == null
              ? null
              : map['taskAvailabilityLifetimeInSeconds'] as int,
      taskCount: map['taskCount'] as int,
      taskDescription: map['taskDescription'] as String,
      taskKeywords: map['taskKeywords'] == null
          ? null
          : (map['taskKeywords'] as List).cast<String>(),
      taskTimeLimitInSeconds: map['taskTimeLimitInSeconds'] == null
          ? null
          : map['taskTimeLimitInSeconds'] as int,
      taskTitle: map['taskTitle'] as String,
      workteamArn: map['workteamArn'] as String,
    );
  }
}
