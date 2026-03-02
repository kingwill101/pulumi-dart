// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateBlockDeviceMappingEb {
  final pulumi.Input<String> deleteOnTermination;
  final pulumi.Input<String> encrypted;
  final pulumi.Input<int> iops;
  final pulumi.Input<String> kmsKeyId;
  final pulumi.Input<String> snapshotId;
  final pulumi.Input<int> throughput;
  final pulumi.Input<int> volumeInitializationRate;
  final pulumi.Input<int> volumeSize;
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetLaunchTemplateBlockDeviceMappingEb].
  /// [deleteOnTermination] Required.
  /// [encrypted] Required.
  /// [iops] Required.
  /// [kmsKeyId] Required.
  /// [snapshotId] Required.
  /// [throughput] Required.
  /// [volumeInitializationRate] Required.
  /// [volumeSize] Required.
  /// [volumeType] Required.
  GetLaunchTemplateBlockDeviceMappingEb({
    required this.deleteOnTermination,
    required this.encrypted,
    required this.iops,
    required this.kmsKeyId,
    required this.snapshotId,
    required this.throughput,
    required this.volumeInitializationRate,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': deleteOnTermination,
      'encrypted': encrypted,
      'iops': iops,
      'kmsKeyId': kmsKeyId,
      'snapshotId': snapshotId,
      'throughput': throughput,
      'volumeInitializationRate': volumeInitializationRate,
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
  }

  factory GetLaunchTemplateBlockDeviceMappingEb.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateBlockDeviceMappingEb(
      deleteOnTermination: (map['deleteOnTermination'] as String).input(),
      encrypted: (map['encrypted'] as String).input(),
      iops: (map['iops'] as int).input(),
      kmsKeyId: (map['kmsKeyId'] as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      throughput: (map['throughput'] as int).input(),
      volumeInitializationRate: (map['volumeInitializationRate'] as int).input(),
      volumeSize: (map['volumeSize'] as int).input(),
      volumeType: (map['volumeType'] as String).input(),
    );
  }
}

