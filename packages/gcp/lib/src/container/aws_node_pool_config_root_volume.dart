// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolConfigRootVolume {
  /// Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
  final int? iops;

  /// Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
  final String? kmsKeyArn;

  /// Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  final int? sizeGib;

  /// Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. If volume type is gp3 and throughput is not specified, the throughput will defaults to 125.
  final int? throughput;

  /// Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
  final String? volumeType;

  /// Creates a new [AwsNodePoolConfigRootVolume].
  /// [iops] Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
  /// [kmsKeyArn] Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to encrypt AWS EBS volumes. If not specified, the default Amazon managed key associated to the AWS region where this cluster runs will be used.
  /// [sizeGib] Optional. The size of the volume, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource.
  /// [throughput] Optional. The throughput to provision for the volume, in MiB/s. Only valid if the volume type is GP3. If volume type is gp3 and throughput is not specified, the throughput will defaults to 125.
  /// [volumeType] Optional. Type of the EBS volume. When unspecified, it defaults to GP2 volume. Possible values: VOLUME_TYPE_UNSPECIFIED, GP2, GP3
  AwsNodePoolConfigRootVolume({
    this.iops,
    this.kmsKeyArn,
    this.sizeGib,
    this.throughput,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iops': ?iops,
      'kmsKeyArn': ?kmsKeyArn,
      'sizeGib': ?sizeGib,
      'throughput': ?throughput,
      'volumeType': ?volumeType,
    };
  }

  factory AwsNodePoolConfigRootVolume.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigRootVolume(
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      sizeGib: map['sizeGib'] == null ? null : map['sizeGib'] as int,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeType: map['volumeType'] == null
          ? null
          : map['volumeType'] as String,
    );
  }
}
