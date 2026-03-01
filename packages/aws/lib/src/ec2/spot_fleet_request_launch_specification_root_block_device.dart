// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchSpecificationRootBlockDevice {
  final bool? deleteOnTermination;
  final bool? encrypted;
  final int? iops;
  final String? kmsKeyId;
  final int? throughput;
  final int? volumeSize;
  final String? volumeType;

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

  factory SpotFleetRequestLaunchSpecificationRootBlockDevice.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchSpecificationRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null
          ? null
          : map['volumeType'] as String,
    );
  }
}
