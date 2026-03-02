// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageRecipeBlockDeviceMappingEbs {
  /// Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  final pulumi.Input<String>? deleteOnTermination;
  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final pulumi.Input<String>? encrypted;
  /// Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  final pulumi.Input<int>? iops;
  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption.
  final pulumi.Input<String>? kmsKeyId;
  /// Identifier of the EC2 Volume Snapshot.
  final pulumi.Input<String>? snapshotId;
  /// For GP3 volumes only. The throughput in MiB/s that the volume supports.
  final pulumi.Input<int>? throughput;
  /// Size of the volume, in GiB.
  final pulumi.Input<int>? volumeSize;
  /// Type of the volume. For example, `gp2` or `io2`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [ImageRecipeBlockDeviceMappingEbs].
  /// [deleteOnTermination] Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  /// [encrypted] Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  /// [iops] Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption.
  /// [snapshotId] Identifier of the EC2 Volume Snapshot.
  /// [throughput] For GP3 volumes only. The throughput in MiB/s that the volume supports.
  /// [volumeSize] Size of the volume, in GiB.
  /// [volumeType] Type of the volume. For example, `gp2` or `io2`.
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
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'snapshotId': ?snapshotId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType,
    };
  }

  factory ImageRecipeBlockDeviceMappingEbs.fromMap(Map<String, dynamic> map) {
    return ImageRecipeBlockDeviceMappingEbs(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : (map['deleteOnTermination'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as String).input(),
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId'] as String).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize'] as int).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType'] as String).input(),
    );
  }
}

