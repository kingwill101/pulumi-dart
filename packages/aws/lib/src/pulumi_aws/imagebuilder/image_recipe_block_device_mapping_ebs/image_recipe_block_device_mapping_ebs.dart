// ignore_for_file: unused_element, unnecessary_cast

class ImageRecipeBlockDeviceMappingEbs {
  /// Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  final String? deleteOnTermination;

  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final String? encrypted;

  /// Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  final int? iops;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption.
  final String? kmsKeyId;

  /// Identifier of the EC2 Volume Snapshot.
  final String? snapshotId;

  /// For GP3 volumes only. The throughput in MiB/s that the volume supports.
  final int? throughput;

  /// Size of the volume, in GiB.
  final int? volumeSize;

  /// Type of the volume. For example, `gp2` or `io2`.
  final String? volumeType;

  ImageRecipeBlockDeviceMappingEbs({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final volumeSizeValue = volumeSize;
    if (volumeSizeValue != null) {
      map['volumeSize'] = volumeSizeValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory ImageRecipeBlockDeviceMappingEbs.fromMap(Map<String, dynamic> map) {
    return ImageRecipeBlockDeviceMappingEbs(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      snapshotId:
          map['snapshotId'] == null ? null : map['snapshotId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
