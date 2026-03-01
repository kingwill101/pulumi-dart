// ignore_for_file: unused_element, unnecessary_cast

import 'job_step_action_response.dart';
import 'job_step_execution_options_response.dart';
import 'job_step_output_response.dart';

/// Result data returned by getJobStep.
class GetJobStepResult {
  /// The action payload of the job step.
  final JobStepActionResponse action;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the job credential that will be used to connect to the targets.
  final String? credential;
  /// Execution options for the job step.
  final JobStepExecutionOptionsResponse? executionOptions;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Output destination properties of the job step.
  final JobStepOutputResponse? output;
  /// The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  final int? stepId;
  /// The resource ID of the target group that the job step will be executed on.
  final String targetGroup;
  /// Resource type.
  final String type;

  /// Creates a new [GetJobStepResult].
  /// [action] The action payload of the job step.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [credential] The resource ID of the job credential that will be used to connect to the targets.
  /// [executionOptions] Execution options for the job step.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [output] Output destination properties of the job step.
  /// [stepId] The job step's index within the job. If not specified when creating the job step, it will be created as the last step. If not specified when updating the job step, the step id is not modified.
  /// [targetGroup] The resource ID of the target group that the job step will be executed on.
  /// [type] Resource type.
  GetJobStepResult({
    required this.action,
    required this.azureApiVersion,
    this.credential,
    this.executionOptions,
    required this.id,
    required this.name,
    this.output,
    this.stepId,
    required this.targetGroup,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'azureApiVersion': azureApiVersion,
      'credential': ?credential,
      'executionOptions': ?executionOptions == null ? null : executionOptions!.toMap(),
      'id': id,
      'name': name,
      'output': ?output == null ? null : output!.toMap(),
      'stepId': ?stepId,
      'targetGroup': targetGroup,
      'type': type,
    };
  }

  factory GetJobStepResult.fromMap(Map<String, dynamic> map) {
    return GetJobStepResult(
      action: JobStepActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      credential: map['credential'] == null ? null : map['credential'] as String,
      executionOptions: map['executionOptions'] == null ? null : JobStepExecutionOptionsResponse.fromMap((map['executionOptions'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      output: map['output'] == null ? null : JobStepOutputResponse.fromMap((map['output'] as Map).cast<String, dynamic>()),
      stepId: map['stepId'] == null ? null : map['stepId'] as int,
      targetGroup: map['targetGroup'] as String,
      type: map['type'] as String,
    );
  }
}

