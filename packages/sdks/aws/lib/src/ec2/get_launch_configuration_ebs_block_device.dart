// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchConfigurationEbsBlockDevice {
  /// Whether the EBS Volume will be deleted on instance termination.
  final pulumi.Input<bool> deleteOnTermination;
  /// Name of the device.
  final pulumi.Input<String> deviceName;
  /// Whether the volume is Encrypted.
  final pulumi.Input<bool> encrypted;
  /// Provisioned IOPs of the volume.
  final pulumi.Input<int> iops;
  /// Whether the device in the block device mapping of the AMI is suppressed.
  final pulumi.Input<bool> noDevice;
  /// Snapshot ID of the mount.
  final pulumi.Input<String> snapshotId;
  /// Throughput of the volume.
  final pulumi.Input<int> throughput;
  /// Size of the volume.
  final pulumi.Input<int> volumeSize;
  /// Type of the volume.
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetLaunchConfigurationEbsBlockDevice].
  /// [deleteOnTermination] Whether the EBS Volume will be deleted on instance termination.
  /// [deviceName] Name of the device.
  /// [encrypted] Whether the volume is Encrypted.
  /// [iops] Provisioned IOPs of the volume.
  /// [noDevice] Whether the device in the block device mapping of the AMI is suppressed.
  /// [snapshotId] Snapshot ID of the mount.
  /// [throughput] Throughput of the volume.
  /// [volumeSize] Size of the volume.
  /// [volumeType] Type of the volume.
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
    return <String, dynamic>{
      'deleteOnTermination': deleteOnTermination,
      'deviceName': deviceName,
      'encrypted': encrypted,
      'iops': iops,
      'noDevice': noDevice,
      'snapshotId': snapshotId,
      'throughput': throughput,
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
  }

  factory GetLaunchConfigurationEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationEbsBlockDevice(
      deleteOnTermination: (map['deleteOnTermination'] as bool).input(),
      deviceName: (map['deviceName'] as String).input(),
      encrypted: (map['encrypted'] as bool).input(),
      iops: (map['iops'] as int).input(),
      noDevice: (map['noDevice'] as bool).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      throughput: (map['throughput'] as int).input(),
      volumeSize: (map['volumeSize'] as int).input(),
      volumeType: (map['volumeType'] as String).input(),
    );
  }
}

