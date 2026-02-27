// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceEbsBlockDevice {
  /// If the root block device will be deleted on termination.
  final bool deleteOnTermination;

  /// Physical name of the device.
  final String deviceName;

  /// If the EBS volume is encrypted.
  final bool encrypted;

  /// `0` If the volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  final int iops;
  final String kmsKeyId;

  /// ID of the snapshot.
  final String snapshotId;

  /// Map of tags assigned to the Instance.
  final Map<String, String> tags;

  /// Throughput of the volume, in MiB/s.
  final int throughput;
  final String volumeId;

  /// Size of the volume, in GiB.
  final int volumeSize;

  /// Type of the volume.
  final String volumeType;

  GetInstanceEbsBlockDevice({
    required this.deleteOnTermination,
    required this.deviceName,
    required this.encrypted,
    required this.iops,
    required this.kmsKeyId,
    required this.snapshotId,
    required this.tags,
    required this.throughput,
    required this.volumeId,
    required this.volumeSize,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deleteOnTermination'] = deleteOnTermination;
    map['deviceName'] = deviceName;
    map['encrypted'] = encrypted;
    map['iops'] = iops;
    map['kmsKeyId'] = kmsKeyId;
    map['snapshotId'] = snapshotId;
    map['tags'] = tags;
    map['throughput'] = throughput;
    map['volumeId'] = volumeId;
    map['volumeSize'] = volumeSize;
    map['volumeType'] = volumeType;
    return map;
  }

  factory GetInstanceEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return GetInstanceEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] as String,
      encrypted: map['encrypted'] as bool,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      snapshotId: map['snapshotId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      throughput: map['throughput'] as int,
      volumeId: map['volumeId'] as String,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}
