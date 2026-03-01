// ignore_for_file: unused_element, unnecessary_cast


class LaunchConfigurationEbsBlockDevice {
  final bool? deleteOnTermination;
  final String deviceName;
  final bool? encrypted;
  final int? iops;
  final bool? noDevice;
  final String? snapshotId;
  final int? throughput;
  final int? volumeSize;
  final String? volumeType;

  /// Creates a new [LaunchConfigurationEbsBlockDevice].
  /// [deleteOnTermination] Optional.
  /// [deviceName] Required.
  /// [encrypted] Optional.
  /// [iops] Optional.
  /// [noDevice] Optional.
  /// [snapshotId] Optional.
  /// [throughput] Optional.
  /// [volumeSize] Optional.
  /// [volumeType] Optional.
  LaunchConfigurationEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.noDevice,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'deviceName': deviceName,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'noDevice': ?noDevice,
      'snapshotId': ?snapshotId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory LaunchConfigurationEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}

