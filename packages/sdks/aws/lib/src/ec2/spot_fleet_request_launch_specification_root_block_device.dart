// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchSpecificationRootBlockDevice {
  final pulumi.Input<bool>? deleteOnTermination;
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<int>? iops;
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<int>? throughput;
  final pulumi.Input<int>? volumeSize;
  final pulumi.Input<String>? volumeType;

  /// Creates a new [SpotFleetRequestLaunchSpecificationRootBlockDevice].
  /// [deleteOnTermination] Optional.
  /// [encrypted] Optional.
  /// [iops] Optional.
  /// [kmsKeyId] Optional.
  /// [throughput] Optional.
  /// [volumeSize] Optional.
  /// [volumeType] Optional.
  SpotFleetRequestLaunchSpecificationRootBlockDevice({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecificationRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination'] as bool).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize'] as int).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType'] as String).input(),
    );
  }
}

