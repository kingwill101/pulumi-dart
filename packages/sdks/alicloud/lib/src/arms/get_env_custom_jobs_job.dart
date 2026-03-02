// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvCustomJobsJob {
  /// The YAML configuration string.
  final pulumi.Input<String> configYaml;
  /// The name of the custom job.
  final pulumi.Input<String> envCustomJobName;
  /// The ID of the environment instance.
  final pulumi.Input<String> environmentId;
  /// The ID of the custom job. It formats as `<environment_id>:<env_custom_job_name>`.
  final pulumi.Input<String> id;
  /// The region ID.
  final pulumi.Input<String> regionId;
  /// The status of the custom job.
  final pulumi.Input<String> status;

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
      configYaml: (map['configYaml'] as String).input(),
      envCustomJobName: (map['envCustomJobName'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      id: (map['id'] as String).input(),
      regionId: (map['regionId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

