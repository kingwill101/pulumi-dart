// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceRootBlockDevice {
  /// If the root block device will be deleted on termination.
  final pulumi.Input<bool> deleteOnTermination;
  /// Physical name of the device.
  final pulumi.Input<String> deviceName;
  /// If the EBS volume is encrypted.
  final pulumi.Input<bool> encrypted;
  /// `0` If the volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  final pulumi.Input<int> iops;
  final pulumi.Input<String> kmsKeyId;
  /// Map of tags assigned to the Instance.
  final pulumi.Input<Map<String, String>> tags;
  /// Throughput of the volume, in MiB/s.
  final pulumi.Input<int> throughput;
  final pulumi.Input<String> volumeId;
  /// Size of the volume, in GiB.
  final pulumi.Input<int> volumeSize;
  /// Type of the volume.
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetInstanceRootBlockDevice].
  /// [deleteOnTermination] If the root block device will be deleted on termination.
  /// [deviceName] Physical name of the device.
  /// [encrypted] If the EBS volume is encrypted.
  /// [iops] `0` If the volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  /// [kmsKeyId] Required.
  /// [tags] Map of tags assigned to the Instance.
  /// [throughput] Throughput of the volume, in MiB/s.
  /// [volumeId] Required.
  /// [volumeSize] Size of the volume, in GiB.
  /// [volumeType] Type of the volume.
  const GetInstanceRootBlockDevice({
    required this.deleteOnTermination,
    required this.deviceName,
    required this.encrypted,
    required this.iops,
    required this.kmsKeyId,
    required this.tags,
    required this.throughput,
    required this.volumeId,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': deleteOnTermination,
      'deviceName': deviceName,
      'encrypted': encrypted,
      'iops': iops,
      'kmsKeyId': kmsKeyId,
      'tags': tags,
      'throughput': throughput,
      'volumeId': volumeId,
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
  }

  factory GetInstanceRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceRootBlockDevice(
      deleteOnTermination: pulumi.Input.fromValue(map['deleteOnTermination'] as bool),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as bool),
      iops: pulumi.Input.fromValue(map['iops'] as int),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      throughput: pulumi.Input.fromValue(map['throughput'] as int),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
      volumeSize: pulumi.Input.fromValue(map['volumeSize'] as int),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
    );
  }
}
