// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchSpecificationEbsBlockDevice {
  final pulumi.Input<bool>? deleteOnTermination;
  final pulumi.Input<String> deviceName;
  final pulumi.Input<bool>? encrypted;
  final pulumi.Input<int>? iops;
  final pulumi.Input<String>? kmsKeyId;
  final pulumi.Input<String>? snapshotId;
  final pulumi.Input<int>? throughput;
  final pulumi.Input<int>? volumeSize;
  final pulumi.Input<String>? volumeType;

  /// Creates a new [SpotFleetRequestLaunchSpecificationEbsBlockDevice].
  /// [deleteOnTermination] Optional.
  /// [deviceName] Required.
  /// [encrypted] Optional.
  /// [iops] Optional.
  /// [kmsKeyId] Optional.
  /// [snapshotId] Optional.
  /// [throughput] Optional.
  /// [volumeSize] Optional.
  /// [volumeType] Optional.
  SpotFleetRequestLaunchSpecificationEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
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
      'kmsKeyId': ?kmsKeyId,
      'snapshotId': ?snapshotId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory SpotFleetRequestLaunchSpecificationEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchSpecificationEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : ((map['deleteOnTermination'] as bool).input()).input(),
      deviceName: (map['deviceName'] as String).input(),
      encrypted: map['encrypted'] == null ? null : ((map['encrypted'] as bool).input()).input(),
      iops: map['iops'] == null ? null : ((map['iops'] as int).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      snapshotId: map['snapshotId'] == null ? null : ((map['snapshotId'] as String).input()).input(),
      throughput: map['throughput'] == null ? null : ((map['throughput'] as int).input()).input(),
      volumeSize: map['volumeSize'] == null ? null : ((map['volumeSize'] as int).input()).input(),
      volumeType: map['volumeType'] == null ? null : ((map['volumeType'] as String).input()).input(),
    );
  }
}

