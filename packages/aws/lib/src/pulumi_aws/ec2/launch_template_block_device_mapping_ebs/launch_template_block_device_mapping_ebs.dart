// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateBlockDeviceMappingEbs {
  /// Whether the volume should be destroyed on instance termination.
  /// See [Preserving Amazon EBS Volumes on Instance Termination](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/preserving-volumes-on-termination.html) for more information.
  final String? deleteOnTermination;

  /// Enables [EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) on the volume.
  /// Cannot be used with `snapshot_id`.
  final String? encrypted;

  /// The amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html).
  /// This must be set with a `volume_type` of `"io1/io2/gp3"`.
  final int? iops;

  /// Identifier (key ID, key alias, key ARN, or alias ARN) of the customer managed KMS key to use for EBS encryption.
  /// `encrypted` must be set to `true` when this is set.
  final String? kmsKeyId;

  /// The Snapshot ID to mount.
  final String? snapshotId;

  /// The throughput to provision for a `gp3` volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s.
  final int? throughput;

  /// The volume initialization rate in MiB/s (specified as an integer, e.g. 100), with a minimum of 100 MiB/s and maximum of 300 MiB/s.
  final int? volumeInitializationRate;

  /// The size of the volume in gigabytes.
  final int? volumeSize;

  /// The volume type.
  /// Can be one of `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1` or `st1`.
  final String? volumeType;

  LaunchTemplateBlockDeviceMappingEbs({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.throughput,
    this.volumeInitializationRate,
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
    final volumeInitializationRateValue = volumeInitializationRate;
    if (volumeInitializationRateValue != null) {
      map['volumeInitializationRate'] = volumeInitializationRateValue;
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

  factory LaunchTemplateBlockDeviceMappingEbs.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateBlockDeviceMappingEbs(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as String,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      snapshotId:
          map['snapshotId'] == null ? null : map['snapshotId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeInitializationRate: map['volumeInitializationRate'] == null
          ? null
          : map['volumeInitializationRate'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
