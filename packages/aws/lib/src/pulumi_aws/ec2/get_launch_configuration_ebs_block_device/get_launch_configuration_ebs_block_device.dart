// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchConfigurationEbsBlockDevice {
  /// Whether the EBS Volume will be deleted on instance termination.
  final bool deleteOnTermination;

  /// Name of the device.
  final String deviceName;

  /// Whether the volume is Encrypted.
  final bool encrypted;

  /// Provisioned IOPs of the volume.
  final int iops;

  /// Whether the device in the block device mapping of the AMI is suppressed.
  final bool noDevice;

  /// Snapshot ID of the mount.
  final String snapshotId;

  /// Throughput of the volume.
  final int throughput;

  /// Size of the volume.
  final int volumeSize;

  /// Type of the volume.
  final String volumeType;

  GetLaunchConfigurationEbsBlockDevice({
    required this.deleteOnTermination,
    required this.deviceName,
    required this.encrypted,
    required this.iops,
    required this.noDevice,
    required this.snapshotId,
    required this.throughput,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteOnTermination'] = deleteOnTermination;
    map['deviceName'] = deviceName;
    map['encrypted'] = encrypted;
    map['iops'] = iops;
    map['noDevice'] = noDevice;
    map['snapshotId'] = snapshotId;
    map['throughput'] = throughput;
    map['volumeSize'] = volumeSize;
    map['volumeType'] = volumeType;
    return map;
  }

  factory GetLaunchConfigurationEbsBlockDevice.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchConfigurationEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] as String,
      encrypted: map['encrypted'] as bool,
      iops: map['iops'] as int,
      noDevice: map['noDevice'] as bool,
      snapshotId: map['snapshotId'] as String,
      throughput: map['throughput'] as int,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
