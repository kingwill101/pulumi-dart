// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateBlockDeviceMappingEb {
  final String deleteOnTermination;
  final String encrypted;
  final int iops;
  final String kmsKeyId;
  final String snapshotId;
  final int throughput;
  final int volumeInitializationRate;
  final int volumeSize;
  final String volumeType;

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
    final map = <String, dynamic>{};
    map['deleteOnTermination'] = deleteOnTermination;
    map['encrypted'] = encrypted;
    map['iops'] = iops;
    map['kmsKeyId'] = kmsKeyId;
    map['snapshotId'] = snapshotId;
    map['throughput'] = throughput;
    map['volumeInitializationRate'] = volumeInitializationRate;
    map['volumeSize'] = volumeSize;
    map['volumeType'] = volumeType;
    return map;
  }

  factory GetLaunchTemplateBlockDeviceMappingEb.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateBlockDeviceMappingEb(
      deleteOnTermination: map['deleteOnTermination'] as String,
      encrypted: map['encrypted'] as String,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      snapshotId: map['snapshotId'] as String,
      throughput: map['throughput'] as int,
      volumeInitializationRate: map['volumeInitializationRate'] as int,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
