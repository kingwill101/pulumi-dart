// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config.dart';

/// {@template pulumi_transcoder_job_template_job_template_args_doc}
/// The set of arguments for JobTemplate.
/// {@endtemplate}
/// {@macro pulumi_transcoder_job_template_job_template_args_doc}
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

  /// Creates a new [JobTemplateArgs].
  /// [config] The configuration for this template.
  /// [jobTemplateId] ID to use for the Transcoding job template.
  /// [labels] The labels associated with this job template. You can use these to organize and group your job templates.
  /// [location] The location of the transcoding job template resource.
  /// [project] The ID of the project in which the resource belongs.
  JobTemplateArgs({
    JobTemplateConfig? config,
    required String jobTemplateId,
    Map<String, String>? labels,
    required String location,
    String? project,
  })  : config = pulumi.Input.asOptionalInput<JobTemplateConfig>(config),
        jobTemplateId = pulumi.Input.asInput<String>(jobTemplateId),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      config: map['config'] == null
          ? null
          : JobTemplateConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      jobTemplateId: map['jobTemplateId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
