// ignore_for_file: unused_element, unnecessary_cast

class LaunchConfigurationRootBlockDevice {
  final bool? deleteOnTermination;
  final bool? encrypted;
  final int? iops;
  final int? throughput;
  final int? volumeSize;
  final String? volumeType;

  /// Creates a new [LaunchConfigurationRootBlockDevice].
  /// [deleteOnTermination] Optional.
  /// [encrypted] Optional.
  /// [iops] Optional.
  /// [throughput] Optional.
  /// [volumeSize] Optional.
  /// [volumeType] Optional.
  LaunchConfigurationRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final volumeSizeValue = volumeSize;
    if (volumeSizeValue != null) {
      map['volumeSize'] = volumeSizeValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory LaunchConfigurationRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
