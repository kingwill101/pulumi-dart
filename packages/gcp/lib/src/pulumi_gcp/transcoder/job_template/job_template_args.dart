// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_template_config/job_template_config.dart';

/// The set of arguments for JobTemplate.
class JobTemplateArgs {
  /// The configuration for this template.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfig>? config;

  /// ID to use for the Transcoding job template.
  final pulumi.Input<String> jobTemplateId;

  /// The labels associated with this job template. You can use these to organize and group your job templates.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the transcoding job template resource.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  JobTemplateArgs({
    this.config,
    required this.jobTemplateId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = pulumi.Input.mapOptionalInputValue<JobTemplateConfig,
          Map<String, dynamic>>(configValue, (value) => value.toMap());
    }
    map['jobTemplateId'] = jobTemplateId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory JobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return JobTemplateArgs(
      config: pulumi.Input.asOptionalInput<JobTemplateConfig>(map['config']),
      jobTemplateId: pulumi.Input.asInput<String>(map['jobTemplateId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
