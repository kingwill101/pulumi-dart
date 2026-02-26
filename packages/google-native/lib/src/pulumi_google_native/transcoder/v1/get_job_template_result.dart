// ignore_for_file: unused_element, unnecessary_cast

import 'job_config_response.dart';

/// Result data returned by getJobTemplate.
class GetJobTemplateResult {
  /// The configuration for this template.
  final JobConfigResponse config;

  /// The labels associated with this job template. You can use these to organize and group your job templates.
  final Map<String, String> labels;

  /// The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  final String name;

  GetJobTemplateResult({
    required this.config,
    required this.labels,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['labels'] = labels;
    map['name'] = name;
    return map;
  }

  factory GetJobTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateResult(
      config: JobConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
    );
  }
}
