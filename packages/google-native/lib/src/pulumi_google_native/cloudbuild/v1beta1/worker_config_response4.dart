// ignore_for_file: unused_element, unnecessary_cast

/// Defines the configuration to be used for creating workers in the pool.
class WorkerConfigResponse4 {
  /// Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  final String diskSizeGb;

  /// Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`.
  final String machineType;

  /// If true, workers are created without any public address, which prevents network egress to public IPs.
  final bool noExternalIp;

  WorkerConfigResponse4({
    required this.diskSizeGb,
    required this.machineType,
    required this.noExternalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskSizeGb'] = diskSizeGb;
    map['machineType'] = machineType;
    map['noExternalIp'] = noExternalIp;
    return map;
  }

  factory WorkerConfigResponse4.fromMap(Map<String, dynamic> map) {
    return WorkerConfigResponse4(
      diskSizeGb: map['diskSizeGb'] as String,
      machineType: map['machineType'] as String,
      noExternalIp: map['noExternalIp'] as bool,
    );
  }
}
