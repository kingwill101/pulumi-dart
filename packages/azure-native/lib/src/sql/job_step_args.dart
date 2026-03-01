// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_step_action.dart';
import 'job_step_execution_options.dart';
import 'job_step_output.dart';

/// {@template pulumi_sql_job_step_args_doc}
/// The set of arguments for JobStep.
/// {@endtemplate}
/// {@macro pulumi_sql_job_step_args_doc}
class JobStepArgs {
  /// The action payload of the job step.
  final pulumi.Input<JobStepAction> action;
  /// The resource ID of the job credential that will be used to connect to the targets.
  final pulumi.Input<String>? credential;
  /// Execution options for the job step.
  final pulumi.Input<JobStepExecutionOptions>? executionOptions;
  /// The name of the job agent.
  final pulumi.Input<String> jobAgentName;
  /// The name of the job.
  final pulumi.Input<String> jobName;
  /// Output destination properties of the job step.
  final pulumi.Input<JobStepOutput>? output;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  final pulumi.Input<int>? stepId;
  /// The name of the job step.
  final pulumi.Input<String>? stepName;
  /// The resource ID of the target group that the job step will be executed on.
  final pulumi.Input<String> targetGroup;

  /// Creates a new [JobStepArgs].
  /// [action] The action payload of the job step.
  /// [credential] The resource ID of the job credential that will be used to connect to the targets.
  /// [executionOptions] Execution options for the job step.
  /// [jobAgentName] The name of the job agent.
  /// [jobName] The name of the job.
  /// [output] Output destination properties of the job step.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [stepId] The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  /// [stepName] The name of the job step.
  /// [targetGroup] The resource ID of the target group that the job step will be executed on.
  JobStepArgs({
    required JobStepAction action,
    String? credential,
    JobStepExecutionOptions? executionOptions,
    required String jobAgentName,
    required String jobName,
    JobStepOutput? output,
    required String resourceGroupName,
    required String serverName,
    int? stepId,
    String? stepName,
    required String targetGroup,
  }) :
      action = pulumi.Input.asInput<JobStepAction>(action),
      credential = pulumi.Input.asOptionalInput<String>(credential),
      executionOptions = pulumi.Input.asOptionalInput<JobStepExecutionOptions>(executionOptions),
      jobAgentName = pulumi.Input.asInput<String>(jobAgentName),
      jobName = pulumi.Input.asInput<String>(jobName),
      output = pulumi.Input.asOptionalInput<JobStepOutput>(output),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      stepId = pulumi.Input.asOptionalInput<int>(stepId),
      stepName = pulumi.Input.asOptionalInput<String>(stepName),
      targetGroup = pulumi.Input.asInput<String>(targetGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<JobStepAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'credential': ?credential,
      'executionOptions': ?pulumi.Input.mapOptionalInputValue<JobStepExecutionOptions, Map<String, dynamic>>(executionOptions, (value) => value.toMap()),
      'jobAgentName': jobAgentName,
      'jobName': jobName,
      'output': ?pulumi.Input.mapOptionalInputValue<JobStepOutput, Map<String, dynamic>>(output, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'stepId': ?stepId,
      'stepName': ?stepName,
      'targetGroup': targetGroup,
    };
  }

  factory JobStepArgs.fromMap(Map<String, dynamic> map) {
    return JobStepArgs(
      action: JobStepAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : map['credential'] as String,
      executionOptions: map['executionOptions'] == null ? null : JobStepExecutionOptions.fromMap((map['executionOptions'] as Map).cast<String, dynamic>()),
      jobAgentName: map['jobAgentName'] as String,
      jobName: map['jobName'] as String,
      output: map['output'] == null ? null : JobStepOutput.fromMap((map['output'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
      stepId: map['stepId'] == null ? null : map['stepId'] as int,
      stepName: map['stepName'] == null ? null : map['stepName'] as String,
      targetGroup: map['targetGroup'] as String,
    );
  }
}

