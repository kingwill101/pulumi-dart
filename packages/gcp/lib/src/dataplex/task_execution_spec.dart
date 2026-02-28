// ignore_for_file: unused_element, unnecessary_cast


class TaskExecutionSpec {
  /// The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${taskId} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument. An object containing a list of 'key': value pairs. Example: { 'name': 'wrench', 'mass': '1.3kg', 'count': '3' }.
  final Map<String, String>? args;
  /// The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  final String? kmsKey;
  /// The maximum duration after which the job execution is expired. A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  final String? maxJobExecutionLifetime;
  /// The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.
  final String? project;
  /// Service account to use to execute a task. If not provided, the default Compute service account for the project is used.
  final String serviceAccount;

  /// Creates a new [TaskExecutionSpec].
  /// [args] The arguments to pass to the task. The args can use placeholders of the format ${placeholder} as part of key/value string. These will be interpolated before passing the args to the driver. Currently supported placeholders: - ${taskId} - ${job_time} To pass positional args, set the key as TASK_ARGS. The value should be a comma-separated string of all the positional arguments. To use a delimiter other than comma, refer to https://cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys being present in the args, then TASK_ARGS will be passed as the last argument. An object containing a list of 'key': value pairs. Example: { 'name': 'wrench', 'mass': '1.3kg', 'count': '3' }.
  /// [kmsKey] The Cloud KMS key to use for encryption, of the form: projects/{project_number}/locations/{locationId}/keyRings/{key-ring-name}/cryptoKeys/{key-name}.
  /// [maxJobExecutionLifetime] The maximum duration after which the job execution is expired. A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  /// [project] The project in which jobs are run. By default, the project containing the Lake is used. If a project is provided, the ExecutionSpec.service_account must belong to this project.
  /// [serviceAccount] Service account to use to execute a task. If not provided, the default Compute service account for the project is used.
  TaskExecutionSpec({
    this.args,
    this.kmsKey,
    this.maxJobExecutionLifetime,
    this.project,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'kmsKey': ?kmsKey,
      'maxJobExecutionLifetime': ?maxJobExecutionLifetime,
      'project': ?project,
      'serviceAccount': serviceAccount,
    };
  }

  factory TaskExecutionSpec.fromMap(Map<String, dynamic> map) {
    return TaskExecutionSpec(
      args: map['args'] == null ? null : (map['args'] as Map).cast<String, String>(),
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      maxJobExecutionLifetime: map['maxJobExecutionLifetime'] == null ? null : map['maxJobExecutionLifetime'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccount: map['serviceAccount'] as String,
    );
  }
}

