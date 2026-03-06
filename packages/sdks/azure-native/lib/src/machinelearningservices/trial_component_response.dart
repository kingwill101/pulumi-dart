// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_resource_configuration_response.dart';
import 'mpi_response.dart';

/// Trial component definition.
class TrialComponentResponse {
  /// ARM resource ID of the code asset.
  final pulumi.Input<String>? codeId;
  /// [Required] The command to execute on startup of the job. eg. "python train.py"
  final pulumi.Input<String> command;
  /// Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  final pulumi.Input<MpiResponse>? distribution;
  /// [Required] The ARM resource ID of the Environment specification for the job.
  final pulumi.Input<String> environmentId;
  /// Environment variables included in the job.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Compute Resource configuration for the job.
  final pulumi.Input<JobResourceConfigurationResponse>? resources;

  /// Creates a new [TrialComponentResponse].
  /// [codeId] ARM resource ID of the code asset.
  /// [command] [Required] The command to execute on startup of the job. eg. "python train.py"
  /// [distribution] Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  /// [environmentId] [Required] The ARM resource ID of the Environment specification for the job.
  /// [environmentVariables] Environment variables included in the job.
  /// [resources] Compute Resource configuration for the job.
  const TrialComponentResponse({
    this.codeId,
    required this.command,
    this.distribution,
    required this.environmentId,
    this.environmentVariables,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeId': ?codeId,
      'command': command,
      'distribution': ?pulumi.Input.mapOptionalInputValue<MpiResponse, Map<String, dynamic>>(distribution, (value) => value.toMap()),
      'environmentId': environmentId,
      'environmentVariables': ?environmentVariables,
      'resources': ?pulumi.Input.mapOptionalInputValue<JobResourceConfigurationResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory TrialComponentResponse.fromMap(Map<String, dynamic> map) {
    return TrialComponentResponse(
      codeId: (() { final guardedValue = map['codeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      command: pulumi.Input.fromValue(map['command'] as String),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MpiResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobResourceConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

