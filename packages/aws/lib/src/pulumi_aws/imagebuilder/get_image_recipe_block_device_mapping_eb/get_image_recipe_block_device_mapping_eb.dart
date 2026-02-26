// ignore_for_file: unused_element, unnecessary_cast

class GetImageRecipeBlockDeviceMappingEb {
  /// Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image.
  final String deleteOnTermination;

  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final String encrypted;

  /// Number of Input/Output (I/O) operations per second to provision for an <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span> or <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> volume.
  final int iops;

  /// ARN of the Key Management Service (KMS) Key for encryption.
  final String kmsKeyId;

  /// Identifier of the EC2 Volume Snapshot.
  final String snapshotId;

  /// For GP3 volumes only. The throughput in MiB/s that the volume supports.
  final int throughput;

  /// Size of the volume, in GiB.
  final int volumeSize;

  /// Type of the volume. For example, <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span> or <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span>.
  final String volumeType;

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
    final map = <String, dynamic>{};
    map['deleteOnTermination'] = deleteOnTermination;
    map['encrypted'] = encrypted;
    map['iops'] = iops;
    map['kmsKeyId'] = kmsKeyId;
    map['snapshotId'] = snapshotId;
    map['throughput'] = throughput;
    map['volumeSize'] = volumeSize;
    map['volumeType'] = volumeType;
    return map;
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
