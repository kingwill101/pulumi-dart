// ignore_for_file: unused_element, unnecessary_cast


class GetEnvCustomJobsJob {
  /// The YAML configuration string.
  final String configYaml;
  /// The name of the custom job.
  final String envCustomJobName;
  /// The ID of the environment instance.
  final String environmentId;
  /// The ID of the custom job. It formats as `<environment_id>:<env_custom_job_name>`.
  final String id;
  /// The region ID.
  final String regionId;
  /// The status of the custom job.
  final String status;

  /// Creates a new [GetEnvCustomJobsJob].
  /// [configYaml] The YAML configuration string.
  /// [envCustomJobName] The name of the custom job.
  /// [environmentId] The ID of the environment instance.
  /// [id] The ID of the custom job. It formats as `<environment_id>:<env_custom_job_name>`.
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
      configYaml: map['configYaml'] as String,
      envCustomJobName: map['envCustomJobName'] as String,
      environmentId: map['environmentId'] as String,
      id: map['id'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
    );
  }
}

