// ignore_for_file: unused_element, unnecessary_cast

/// All parameters related to queuing and scheduling of custom jobs.
class GoogleCloudAiplatformV1Scheduling {
  /// Optional. Indicates if the job should retry for internal errors after the job starts running. If true, overrides `Scheduling.restart_job_on_worker_restart` to false.
  final bool? disableRetries;

  /// Restarts the entire CustomJob if a worker gets restarted. This feature can be used by distributed training jobs that are not resilient to workers leaving and joining a job.
  final bool? restartJobOnWorkerRestart;

  /// The maximum job running time. The default is 7 days.
  final String? timeout;

  GoogleCloudAiplatformV1Scheduling({
    this.disableRetries,
    this.restartJobOnWorkerRestart,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableRetriesValue = disableRetries;
    if (disableRetriesValue != null) {
      map['disableRetries'] = disableRetriesValue;
    }
    final restartJobOnWorkerRestartValue = restartJobOnWorkerRestart;
    if (restartJobOnWorkerRestartValue != null) {
      map['restartJobOnWorkerRestart'] = restartJobOnWorkerRestartValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1Scheduling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1Scheduling(
      disableRetries:
          map['disableRetries'] == null ? null : map['disableRetries'] as bool,
      restartJobOnWorkerRestart: map['restartJobOnWorkerRestart'] == null
          ? null
          : map['restartJobOnWorkerRestart'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
