// ignore_for_file: unused_element, unnecessary_cast

/// Defines the configuration to be used for creating workers in the pool.
class WorkerConfig {
  /// Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). Specify a value of up to 2000. If `0` is specified, Cloud Build will use a standard disk size.
  final String? diskSizeGb;

  /// Machine type of a worker, such as `e2-medium`. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will use a sensible default.
  final String? machineType;

  WorkerConfig({
    this.diskSizeGb,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    return map;
  }

  factory WorkerConfig.fromMap(Map<String, dynamic> map) {
    return WorkerConfig(
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}
