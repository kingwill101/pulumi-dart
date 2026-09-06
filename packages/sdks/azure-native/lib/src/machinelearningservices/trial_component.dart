// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_resource_configuration.dart';

/// Trial component definition.
class TrialComponent {
  /// ARM resource ID of the code asset.
  final pulumi.Input<String?>? codeId;
  /// [Required] The command to execute on startup of the job. eg. "python train.py"
  final pulumi.Input<String> command;
  /// Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  final pulumi.Input<dynamic>? distribution;
  /// [Required] The ARM resource ID of the Environment specification for the job.
  final pulumi.Input<String> environmentId;
  /// Environment variables included in the job.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Compute Resource configuration for the job.
  final pulumi.Input<JobResourceConfiguration?>? resources;

  /// Creates a new [TrialComponent].
  /// [codeId] ARM resource ID of the code asset.
  /// [command] [Required] The command to execute on startup of the job. eg. "python train.py"
  /// [distribution] Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  /// [environmentId] [Required] The ARM resource ID of the Environment specification for the job.
  /// [environmentVariables] Environment variables included in the job.
  /// [resources] Compute Resource configuration for the job.
  const TrialComponent({
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
      'distribution': ?distribution,
      'environmentId': environmentId,
      'environmentVariables': ?environmentVariables,
      'resources': ?pulumi.Input.mapOptionalInputValue<JobResourceConfiguration, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory TrialComponent.fromMap(Map<String, dynamic> map) {
    return TrialComponent(
      codeId: (() { final guardedValue = map['codeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      command: pulumi.Input.fromValue(map['command'] as String),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobResourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
