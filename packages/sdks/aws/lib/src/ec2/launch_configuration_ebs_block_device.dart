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
      deleteOnTermination: (() {
        final guardedValue = map['deleteOnTermination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      iops: (() {
        final guardedValue = map['iops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      noDevice: (() {
        final guardedValue = map['noDevice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      throughput: (() {
        final guardedValue = map['throughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeSize: (() {
        final guardedValue = map['volumeSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeType: (() {
        final guardedValue = map['volumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
