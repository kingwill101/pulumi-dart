// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb {
  /// Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  final pulumi.Input<bool> deleteOnTermination;

  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final pulumi.Input<bool> encrypted;

  /// Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  final pulumi.Input<int> iops;

  /// KMS key used to encrypt the container image.
  final pulumi.Input<String> kmsKeyId;

  /// Identifier of the EC2 Volume Snapshot.
  final pulumi.Input<String> snapshotId;

  /// For GP3 volumes only. The throughput in MiB/s that the volume supports.
  final pulumi.Input<int> throughput;

  /// Size of the volume, in GiB.
  final pulumi.Input<int> volumeSize;

  /// Type of the volume. For example, `gp2` or `io2`.
  final pulumi.Input<String> volumeType;

  /// Creates a new [GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb].
  /// [deleteOnTermination] Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  /// [encrypted] Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  /// [iops] Number of Input/Output (I/O) operations per second to provision for an `io1` or `io2` volume.
  /// [kmsKeyId] KMS key used to encrypt the container image.
  /// [snapshotId] Identifier of the EC2 Volume Snapshot.
  /// [throughput] For GP3 volumes only. The throughput in MiB/s that the volume supports.
  /// [volumeSize] Size of the volume, in GiB.
  /// [volumeType] Type of the volume. For example, `gp2` or `io2`.
  GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb({
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

  factory GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb(
      deleteOnTermination: pulumi.Input.fromValue(
        map['deleteOnTermination'] as bool,
      ),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as bool),
      iops: pulumi.Input.fromValue(map['iops'] as int),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      throughput: pulumi.Input.fromValue(map['throughput'] as int),
      volumeSize: pulumi.Input.fromValue(map['volumeSize'] as int),
      volumeType: pulumi.Input.fromValue(map['volumeType'] as String),
    );
  }
}
