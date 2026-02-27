// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config.dart';

/// The set of arguments for JobTemplate.
class JobTemplateArgs {
  /// The configuration for this template.
  final pulumi.Input<JobConfig>? config;

  /// Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.
  final pulumi.Input<String> jobTemplateId;

  /// The labels associated with this job template. You can use these to organize and group your job templates.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  JobTemplateArgs({
    this.config,
    required this.jobTemplateId,
    this.labels,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    map['jobTemplateId'] = jobTemplateId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      config: pulumi.Input.asOptionalInput<JobConfig>(map['config']),
      jobTemplateId: pulumi.Input.asInput<String>(map['jobTemplateId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
