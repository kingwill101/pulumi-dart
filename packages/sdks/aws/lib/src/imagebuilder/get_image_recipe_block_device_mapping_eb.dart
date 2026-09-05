// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageRecipeBlockDeviceMappingEb {
  /// Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  final pulumi.Input<String> deleteOnTermination;
  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final pulumi.Input<String> encrypted;
  /// Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  final pulumi.Input<int> iops;
  /// ARN of the KMS Key for encryption.
  final pulumi.Input<String> kmsKeyId;
  /// Identifier of the EC2 Volume Snapshot.
  final pulumi.Input<String> snapshotId;
  /// For GP3 volumes only. The throughput in MiB/s that the volume supports.
  final pulumi.Input<int> throughput;
  /// Size of the volume, in GiB.
  final pulumi.Input<int> volumeSize;
  /// Type of the volume. For example, `gp2` or `io2`.
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetImageRecipeBlockDeviceMappingEb].
  /// [deleteOnTermination] Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  /// [encrypted] Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  /// [iops] Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  /// [kmsKeyId] ARN of the KMS Key for encryption.
  /// [snapshotId] Identifier of the EC2 Volume Snapshot.
  /// [throughput] For GP3 volumes only. The throughput in MiB/s that the volume supports.
  /// [volumeSize] Size of the volume, in GiB.
  /// [volumeType] Type of the volume. For example, `gp2` or `io2`.
  const GetImageRecipeBlockDeviceMappingEb({
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
      deleteOnTermination: pulumi.Input.fromValue(map['deleteOnTermination'] as String),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as String),
      iops: pulumi.Input.fromValue((map['iops'] as num).toInt()),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      throughput: pulumi.Input.fromValue((map['throughput'] as num).toInt()),
      volumeSize: pulumi.Input.fromValue((map['volumeSize'] as num).toInt()),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
    );
  }
}
