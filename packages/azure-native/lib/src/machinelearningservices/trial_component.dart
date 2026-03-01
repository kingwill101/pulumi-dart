// ignore_for_file: unused_element, unnecessary_cast

import 'job_resource_configuration.dart';
import 'mpi.dart';

/// Trial component definition.
class TrialComponent {
  /// ARM resource ID of the code asset.
  final String? codeId;
  /// [Required] The command to execute on startup of the job. eg. "python train.py"
  final String command;
  /// Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  final Mpi? distribution;
  /// [Required] The ARM resource ID of the Environment specification for the job.
  final String environmentId;
  /// Environment variables included in the job.
  final Map<String, String>? environmentVariables;
  /// Compute Resource configuration for the job.
  final JobResourceConfiguration? resources;

  /// Creates a new [TrialComponent].
  /// [codeId] ARM resource ID of the code asset.
  /// [command] [Required] The command to execute on startup of the job. eg. "python train.py"
  /// [distribution] Distribution configuration of the job. If set, this should be one of Mpi, Tensorflow, PyTorch, or null.
  /// [environmentId] [Required] The ARM resource ID of the Environment specification for the job.
  /// [environmentVariables] Environment variables included in the job.
  /// [resources] Compute Resource configuration for the job.
  TrialComponent({
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
      'distribution': ?distribution == null ? null : distribution!.toMap(),
      'environmentId': environmentId,
      'environmentVariables': ?environmentVariables,
      'resources': ?resources == null ? null : resources!.toMap(),
    };
  }

  factory TrialComponent.fromMap(Map<String, dynamic> map) {
    return TrialComponent(
      codeId: map['codeId'] == null ? null : map['codeId'] as String,
      command: map['command'] as String,
      distribution: map['distribution'] == null ? null : Mpi.fromMap((map['distribution'] as Map).cast<String, dynamic>()),
      environmentId: map['environmentId'] as String,
      environmentVariables: map['environmentVariables'] == null ? null : (map['environmentVariables'] as Map).cast<String, String>(),
      resources: map['resources'] == null ? null : JobResourceConfiguration.fromMap((map['resources'] as Map).cast<String, dynamic>()),
    );
  }
}

