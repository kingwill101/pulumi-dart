// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_var.dart';
import 'job_resource_requests.dart';

/// Job's execution template, containing configuration for an execution
class JobExecutionTemplate {
  /// Arguments for the Job execution.
  final List<String>? args;
  /// Environment variables of Job execution
  final List<EnvVar>? environmentVariables;
  /// The requested resource quantity for required CPU and Memory.
  final JobResourceRequests? resourceRequests;

  /// Creates a new [JobExecutionTemplate].
  /// [args] Arguments for the Job execution.
  /// [environmentVariables] Environment variables of Job execution
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  JobExecutionTemplate({
    this.args,
    this.environmentVariables,
    this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'environmentVariables': ?environmentVariables == null ? null : pulumi.Input.encodeList<EnvVar, Map<String, dynamic>>(environmentVariables!, (value) => value.toMap()),
      'resourceRequests': ?resourceRequests == null ? null : resourceRequests!.toMap(),
    };
  }

  factory JobExecutionTemplate.fromMap(Map<String, dynamic> map) {
    return JobExecutionTemplate(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Input.decodeList<EnvVar>(map['environmentVariables'], (value) => EnvVar.fromMap((value as Map).cast<String, dynamic>())),
      resourceRequests: map['resourceRequests'] == null ? null : JobResourceRequests.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>()),
    );
  }
}

