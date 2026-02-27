// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_config/job_config.dart';

/// The set of arguments for Job.
class JobTranscoderArgs {
  /// The configuration for this template.
  /// Structure is documented below.
  final pulumi.Input<JobConfig>? config;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the transcoding job resource.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specify the templateId to use for populating Job.config.
  /// The default is preset/web-hd, which is the only supported preset.
  final pulumi.Input<String>? templateId;

  JobTranscoderArgs({
    this.config,
    this.labels,
    required this.location,
    this.project,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] =
          pulumi.Input.mapOptionalInputValue<JobConfig, Map<String, dynamic>>(
              configValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final templateIdValue = templateId;
    if (templateIdValue != null) {
      map['templateId'] = templateIdValue;
    }
    return map;
  }

  factory JobTranscoderArgs.fromMap(Map<String, dynamic> map) {
    return JobTranscoderArgs(
      config: pulumi.Input.asOptionalInput<JobConfig>(map['config']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      templateId: pulumi.Input.asOptionalInput<String>(map['templateId']),
    );
  }
}
