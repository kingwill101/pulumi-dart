// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_environment.dart';

/// {@template pulumi_dataflow_v1b3_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_dataflow_v1b3_template_args_doc}
class TemplateArgs {
  /// The runtime environment for the job.
  final pulumi.Input<RuntimeEnvironment>? environment;

  /// A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final pulumi.Input<String> gcsPath;

  /// The job name to use for the created job.
  final pulumi.Input<String> jobName;

  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  final pulumi.Input<String>? location;

  /// The runtime parameters to pass to the job.
  final pulumi.Input<Map<String, String>>? parameters;
  final pulumi.Input<String>? project;

  /// Creates a new [TemplateArgs].
  /// [environment] The runtime environment for the job.
  /// [gcsPath] A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.
  /// [jobName] The job name to use for the created job.
  /// [location] The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  /// [parameters] The runtime parameters to pass to the job.
  /// [project] Optional.
  TemplateArgs({
    RuntimeEnvironment? environment,
    required String gcsPath,
    required String jobName,
    String? location,
    Map<String, String>? parameters,
    String? project,
  }) : environment = pulumi.Input.asOptionalInput<RuntimeEnvironment>(
         environment,
       ),
       gcsPath = pulumi.Input.asInput<String>(gcsPath),
       jobName = pulumi.Input.asInput<String>(jobName),
       location = pulumi.Input.asOptionalInput<String>(location),
       parameters = pulumi.Input.asOptionalInput<Map<String, String>>(
         parameters,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environment':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeEnvironment,
            Map<String, dynamic>
          >(environment, (value) => value.toMap()),
      'gcsPath': gcsPath,
      'jobName': jobName,
      'location': ?location,
      'parameters': ?parameters,
      'project': ?project,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      environment: map['environment'] == null
          ? null
          : RuntimeEnvironment.fromMap(
              (map['environment'] as Map).cast<String, dynamic>(),
            ),
      gcsPath: map['gcsPath'] as String,
      jobName: map['jobName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
