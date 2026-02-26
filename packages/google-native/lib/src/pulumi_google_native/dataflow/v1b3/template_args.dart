// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'runtime_environment.dart';

/// The set of arguments for Template.
class TemplateArgs {
  /// The runtime environment for the job.
  final Input<RuntimeEnvironment>? environment;

  /// A Cloud Storage path to the template from which to create the job. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final Input<String> gcsPath;

  /// The job name to use for the created job.
  final Input<String> jobName;

  /// The [regional endpoint] (https://cloud.google.com/dataflow/docs/concepts/regional-endpoints) to which to direct the request.
  final Input<String>? location;

  /// The runtime parameters to pass to the job.
  final Input<Map<String, String>>? parameters;
  final Input<String>? project;

  TemplateArgs({
    this.environment,
    required this.gcsPath,
    required this.jobName,
    this.location,
    this.parameters,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] =
          Input.mapOptionalInputValue<RuntimeEnvironment, Map<String, dynamic>>(
              environmentValue, (value) => value.toMap());
    }
    map['gcsPath'] = gcsPath;
    map['jobName'] = jobName;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      environment:
          Input.asOptionalInput<RuntimeEnvironment>(map['environment']),
      gcsPath: Input.asInput<String>(map['gcsPath']),
      jobName: Input.asInput<String>(map['jobName']),
      location: Input.asOptionalInput<String>(map['location']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
