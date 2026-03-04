// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_configuration.dart';

/// {@template pulumi_sls_etl_etl_args_doc}
/// The set of arguments for Etl.
/// {@endtemplate}
/// {@macro pulumi_sls_etl_etl_args_doc}
class EtlArgs {
  /// Detailed configuration of the data processing task.   See `configuration` below.
  final pulumi.Input<EtlConfiguration> configuration;

  /// Description of the data processing task.
  final pulumi.Input<String>? description;

  /// The display name of the data processing task.
  final pulumi.Input<String> displayName;

  /// The job name. Naming rules are as follows:
  /// - Job names must be unique within the same project.
  /// - Can only contain lowercase letters, digits, hyphens (-), and underscores (_).
  /// - Must start and end with a lowercase letter or digit.
  /// - Must be 2 to 64 characters in length.
  final pulumi.Input<String> jobName;

  /// Project name.
  final pulumi.Input<String> project;

  /// Creates a new [EtlArgs].
  /// [configuration] Detailed configuration of the data processing task.   See `configuration` below.
  /// [description] Description of the data processing task.
  /// [displayName] The display name of the data processing task.
  /// [jobName] The job name. Naming rules are as follows:
  /// [project] Project name.
  EtlArgs({
    required this.configuration,
    this.description,
    required this.displayName,
    required this.jobName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration':
          pulumi.Input.mapInputValue<EtlConfiguration, Map<String, dynamic>>(
            configuration,
            (value) => value.toMap(),
          ),
      'description': ?description,
      'displayName': displayName,
      'jobName': jobName,
      'project': project,
    };
  }

  factory EtlArgs.fromMap(Map<String, dynamic> map) {
    return EtlArgs(
      configuration: pulumi.Input.fromValue(
        EtlConfiguration.fromMap(
          (map['configuration']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      jobName: pulumi.Input.fromValue(map['jobName'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
    );
  }
}
