// ignore_for_file: unused_element, unnecessary_cast

/// Execution related settings, like retry and service_account.
class GoogleCloudDataplexV1TaskExecutionSpec {
  /// Optional. The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${task_id} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument.
  final Map<String, String>? args;

  /// Optional. The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  final String? kmsKey;

  /// Optional. The maximum duration after which the job execution is expired.
  final String? maxJobExecutionLifetime;

  /// Optional. The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.
  final String? project;

  /// Service account to use to execute a task. If not provided, the default Compute service account for the project is used.
  final String serviceAccount;

  /// Creates a new [GoogleCloudDataplexV1TaskExecutionSpec].
  /// [args] Optional. The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${task_id} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument.
  /// [kmsKey] Optional. The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{location_id}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  /// [maxJobExecutionLifetime] Optional. The maximum duration after which the job execution is expired.
  /// [project] Optional. The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.
  /// [serviceAccount] Service account to use to execute a task. If not provided, the default Compute service account for the project is used.
  GoogleCloudDataplexV1TaskExecutionSpec({
    this.args,
    this.kmsKey,
    this.maxJobExecutionLifetime,
    this.project,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final maxJobExecutionLifetimeValue = maxJobExecutionLifetime;
    if (maxJobExecutionLifetimeValue != null) {
      map['maxJobExecutionLifetime'] = maxJobExecutionLifetimeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccount'] = serviceAccount;
    return map;
  }

  factory GoogleCloudDataplexV1TaskExecutionSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskExecutionSpec(
      args: map['args'] == null
          ? null
          : (map['args'] as Map).cast<String, String>(),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      maxJobExecutionLifetime: map['maxJobExecutionLifetime'] == null
          ? null
          : map['maxJobExecutionLifetime'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}
