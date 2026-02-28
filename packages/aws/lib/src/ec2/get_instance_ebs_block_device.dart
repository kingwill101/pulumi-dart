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

  /// Creates a new [GetInstanceEbsBlockDevice].
  /// [deleteOnTermination] If the root block device will be deleted on termination.
  /// [deviceName] Physical name of the device.
  /// [encrypted] If the EBS volume is encrypted.
  /// [iops] `0` If the volume is not a provisioned IOPS image, otherwise the supported IOPS count.
  /// [kmsKeyId] Required.
  /// [snapshotId] ID of the snapshot.
  /// [tags] Map of tags assigned to the Instance.
  /// [throughput] Throughput of the volume, in MiB/s.
  /// [volumeId] Required.
  /// [volumeSize] Size of the volume, in GiB.
  /// [volumeType] Type of the volume.
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
    return <String, dynamic>{
      'deleteOnTermination': deleteOnTermination,
      'deviceName': deviceName,
      'encrypted': encrypted,
      'iops': iops,
      'kmsKeyId': kmsKeyId,
      'snapshotId': snapshotId,
      'tags': tags,
      'throughput': throughput,
      'volumeId': volumeId,
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
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

