// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvCustomJobsJob {
  /// The YAML configuration string.
  final pulumi.Input<String> configYaml;
  /// The name of the custom job.
  final pulumi.Input<String> envCustomJobName;
  /// The ID of the environment instance.
  final pulumi.Input<String> environmentId;
  /// The ID of the custom job. It formats as `&lt;environment_id&gt;:&lt;env_custom_job_name&gt;`.
  final pulumi.Input<String> id;
  /// The region ID.
  final pulumi.Input<String> regionId;
  /// The status of the custom job.
  final pulumi.Input<String> status;

  /// Creates a new [GetEnvCustomJobsJob].
  /// [configYaml] The YAML configuration string.
  /// [envCustomJobName] The name of the custom job.
  /// [environmentId] The ID of the environment instance.
  /// [id] The ID of the custom job. It formats as `&lt;environment_id&gt;:&lt;env_custom_job_name&gt;`.
  /// [regionId] The region ID.
  /// [status] The status of the custom job.
  GetEnvCustomJobsJob({
    required this.configYaml,
    required this.envCustomJobName,
    required this.environmentId,
    required this.id,
    required this.regionId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configYaml': configYaml,
      'envCustomJobName': envCustomJobName,
      'environmentId': environmentId,
      'id': id,
      'regionId': regionId,
      'status': status,
    };
  }

  factory GetEnvCustomJobsJob.fromMap(Map<String, dynamic> map) {
    return GetEnvCustomJobsJob(
      configYaml: pulumi.Input.fromValue(map['configYaml'] as String),
      envCustomJobName: pulumi.Input.fromValue(map['envCustomJobName'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

