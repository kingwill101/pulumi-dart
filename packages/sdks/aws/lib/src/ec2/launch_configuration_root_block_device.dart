// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationRootBlockDevice {
  final pulumi.Input<bool>? deleteOnTermination;
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<int>? iops;
  final pulumi.Input<int>? throughput;
  final pulumi.Input<int>? volumeSize;
  final pulumi.Input<String>? volumeType;

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
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory LaunchConfigurationRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : ((map['deleteOnTermination'] as bool).input()).input(),
      encrypted: map['encrypted'] == null ? null : ((map['encrypted'] as bool).input()).input(),
      iops: map['iops'] == null ? null : ((map['iops'] as int).input()).input(),
      throughput: map['throughput'] == null ? null : ((map['throughput'] as int).input()).input(),
      volumeSize: map['volumeSize'] == null ? null : ((map['volumeSize'] as int).input()).input(),
      volumeType: map['volumeType'] == null ? null : ((map['volumeType'] as String).input()).input(),
    );
  }
}

