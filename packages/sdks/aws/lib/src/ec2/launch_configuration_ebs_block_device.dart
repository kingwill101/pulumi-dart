// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationEbsBlockDevice {
  /// Whether the volume should be destroyed
  /// on instance termination (Default: `true`).
  final pulumi.Input<bool>? deleteOnTermination;
  /// The name of the device to mount.
  final pulumi.Input<String> deviceName;
  /// Whether the volume should be encrypted or not. Defaults to `false`.
  final pulumi.Input<bool>? encrypted;
  /// The amount of provisioned
  /// [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html).
  /// This must be set with a `volumeType` of `"io1"`.
  final pulumi.Input<int>? iops;
  /// Whether the device in the block device mapping of the AMI is suppressed.
  final pulumi.Input<bool>? noDevice;
  /// The Snapshot ID to mount.
  final pulumi.Input<String>? snapshotId;
  /// The throughput (MiBps) to provision for a `gp3` volume.
  final pulumi.Input<int>? throughput;
  /// The size of the volume in gigabytes.
  final pulumi.Input<int>? volumeSize;
  /// The type of volume. Can be `standard`, `gp2`, `gp3`, `st1`, `sc1` or `io1`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [LaunchConfigurationEbsBlockDevice].
  /// [deleteOnTermination] Whether the volume should be destroyed
  /// [deviceName] The name of the device to mount.
  /// [encrypted] Whether the volume should be encrypted or not. Defaults to `false`.
  /// [iops] The amount of provisioned
  /// [noDevice] Whether the device in the block device mapping of the AMI is suppressed.
  /// [snapshotId] The Snapshot ID to mount.
  /// [throughput] The throughput (MiBps) to provision for a `gp3` volume.
  /// [volumeSize] The size of the volume in gigabytes.
  /// [volumeType] The type of volume. Can be `standard`, `gp2`, `gp3`, `st1`, `sc1` or `io1`.
  const LaunchConfigurationEbsBlockDevice({
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
      deleteOnTermination: (() { final guardedValue = map['deleteOnTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      noDevice: (() { final guardedValue = map['noDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
