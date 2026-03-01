// ignore_for_file: unused_element, unnecessary_cast


class GetImageRecipeBlockDeviceMappingEb {
  /// Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  final String deleteOnTermination;
  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final String encrypted;
  /// Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  final int iops;
  /// ARN of the Key Management Service (KMS) Key for encryption.
  final String kmsKeyId;
  /// Identifier of the EC2 Volume Snapshot.
  final String snapshotId;
  /// For GP3 volumes only. The throughput in MiB/s that the volume supports.
  final int throughput;
  /// Size of the volume, in GiB.
  final int volumeSize;
  /// Type of the volume. For example, `gp2` or `io2`.
  final String volumeType;

  /// Creates a new [GetImageRecipeBlockDeviceMappingEb].
  /// [deleteOnTermination] Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  /// [encrypted] Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  /// [iops] Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  /// [kmsKeyId] ARN of the Key Management Service (KMS) Key for encryption.
  /// [snapshotId] Identifier of the EC2 Volume Snapshot.
  /// [throughput] For GP3 volumes only. The throughput in MiB/s that the volume supports.
  /// [volumeSize] Size of the volume, in GiB.
  /// [volumeType] Type of the volume. For example, `gp2` or `io2`.
  GetImageRecipeBlockDeviceMappingEb({
    required this.deleteOnTermination,
    required this.encrypted,
    required this.iops,
    required this.kmsKeyId,
    required this.snapshotId,
    required this.throughput,
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
      'volumeSize': volumeSize,
      'volumeType': volumeType,
    };
  }

  factory GetImageRecipeBlockDeviceMappingEb.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeBlockDeviceMappingEb(
      deleteOnTermination: map['deleteOnTermination'] as String,
      encrypted: map['encrypted'] as String,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      snapshotId: map['snapshotId'] as String,
      throughput: map['throughput'] as int,
      volumeSize: map['volumeSize'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}

