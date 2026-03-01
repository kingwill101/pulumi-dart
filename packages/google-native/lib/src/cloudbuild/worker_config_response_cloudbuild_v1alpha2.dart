// ignore_for_file: unused_element, unnecessary_cast

/// WorkerConfig defines the configuration to be used for a creating workers in the pool.
class WorkerConfigResponseCloudbuildV1alpha2 {
  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size.
  final String diskSizeGb;

  /// Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool.
  final String machineType;

  /// Creates a new [WorkerConfigResponseCloudbuildV1alpha2].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size.
  /// [machineType] Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool.
  WorkerConfigResponseCloudbuildV1alpha2({
    required this.diskSizeGb,
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'machineType': machineType,
    };
  }

  factory WorkerConfigResponseCloudbuildV1alpha2.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkerConfigResponseCloudbuildV1alpha2(
      diskSizeGb: map['diskSizeGb'] as String,
      machineType: map['machineType'] as String,
    );
  }
}
