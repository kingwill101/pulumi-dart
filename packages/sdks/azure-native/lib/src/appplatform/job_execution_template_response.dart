// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_var_response.dart';
import 'job_resource_requests_response.dart';

/// Job's execution template, containing configuration for an execution
class JobExecutionTemplateResponse {
  /// Arguments for the Job execution.
  final pulumi.Input<List<String>>? args;
  /// Environment variables of Job execution
  final pulumi.Input<List<EnvVarResponse>>? environmentVariables;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<JobResourceRequestsResponse>? resourceRequests;

  /// Creates a new [JobExecutionTemplateResponse].
  /// [args] Arguments for the Job execution.
  /// [environmentVariables] Environment variables of Job execution
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  JobExecutionTemplateResponse({
    this.args,
    this.environmentVariables,
    this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvVarResponse>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvVarResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceRequests': ?pulumi.Input.mapOptionalInputValue<JobResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
    };
  }

  factory JobExecutionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return JobExecutionTemplateResponse(
      args: map['args'] == null ? null : ((map['args']! as List).cast<String>()).input(),
      environmentVariables: map['environmentVariables'] == null ? null : (pulumi.Input.decodeList<EnvVarResponse>(map['environmentVariables']!, (value) => EnvVarResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceRequests: map['resourceRequests'] == null ? null : (JobResourceRequestsResponse.fromMap((map['resourceRequests']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

