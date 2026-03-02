// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationEbsBlockDevice {
  final pulumi.Input<bool>? deleteOnTermination;
  final pulumi.Input<String> deviceName;
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<int>? iops;
  final pulumi.Input<bool>? noDevice;
  final pulumi.Input<String>? snapshotId;
  final pulumi.Input<int>? throughput;
  final pulumi.Input<int>? volumeSize;
  final pulumi.Input<String>? volumeType;

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
      deleteOnTermination: map['deleteOnTermination'] == null ? null : ((map['deleteOnTermination'] as bool).input()).input(),
      deviceName: (map['deviceName'] as String).input(),
      encrypted: map['encrypted'] == null ? null : ((map['encrypted'] as bool).input()).input(),
      iops: map['iops'] == null ? null : ((map['iops'] as int).input()).input(),
      noDevice: map['noDevice'] == null ? null : ((map['noDevice'] as bool).input()).input(),
      snapshotId: map['snapshotId'] == null ? null : ((map['snapshotId'] as String).input()).input(),
      throughput: map['throughput'] == null ? null : ((map['throughput'] as int).input()).input(),
      volumeSize: map['volumeSize'] == null ? null : ((map['volumeSize'] as int).input()).input(),
      volumeType: map['volumeType'] == null ? null : ((map['volumeType'] as String).input()).input(),
    );
  }
}

