// ignore_for_file: unused_element, unnecessary_cast

class WorkerPoolWorkerConfig {
  /// Size of the disk attached to the worker, in GB. See [diskSizeGb](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#disksizegb). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  final int? diskSizeGb;

  /// Enable nested virtualization on the worker, if supported by the machine type. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will set this to false.
  final bool? enableNestedVirtualization;

  /// Machine type of a worker, such as `n1-standard-1`. See [machineType](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#machinetype). If left blank, Cloud Build will use `n1-standard-1`.
  final String? machineType;

  /// If true, workers are created without any public address, which prevents network egress to public IPs.
  final bool? noExternalIp;

  /// Creates a new [WorkerPoolWorkerConfig].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See [diskSizeGb](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#disksizegb). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  /// [enableNestedVirtualization] Enable nested virtualization on the worker, if supported by the machine type. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will set this to false.
  /// [machineType] Machine type of a worker, such as `n1-standard-1`. See [machineType](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#machinetype). If left blank, Cloud Build will use `n1-standard-1`.
  /// [noExternalIp] If true, workers are created without any public address, which prevents network egress to public IPs.
  WorkerPoolWorkerConfig({
    this.diskSizeGb,
    this.enableNestedVirtualization,
    this.machineType,
    this.noExternalIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final enableNestedVirtualizationValue = enableNestedVirtualization;
    if (enableNestedVirtualizationValue != null) {
      map['enableNestedVirtualization'] = enableNestedVirtualizationValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final noExternalIpValue = noExternalIp;
    if (noExternalIpValue != null) {
      map['noExternalIp'] = noExternalIpValue;
    }
    return map;
  }

  factory WorkerPoolWorkerConfig.fromMap(Map<String, dynamic> map) {
    return WorkerPoolWorkerConfig(
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      noExternalIp:
          map['noExternalIp'] == null ? null : map['noExternalIp'] as bool,
    );
  }
}
