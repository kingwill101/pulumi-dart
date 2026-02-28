// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestEbsBlockDevice {
  /// Whether the volume should be destroyed on instance termination. Defaults to `true`.
  final bool? deleteOnTermination;

  /// Name of the device to mount.
  final String deviceName;

  /// Enables [EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) on the volume. Defaults to `false`. Cannot be used with `snapshot_id`. Must be configured to perform drift detection.
  final bool? encrypted;

  /// Amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). Only valid for volume_type of `io1`, `io2` or `gp3`.
  final int? iops;

  /// Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.
  final String? kmsKeyId;

  /// Snapshot ID to mount.
  final String? snapshotId;

  /// Map of tags to assign to the device. **Note:** Tags specified here are applied after instance creation via a separate API call. This means they cannot be used with IAM policies that require tags during resource creation (e.g., ABAC policies with `ec2:CreateAction` conditions or SCPs requiring volume tags). For ABAC compliance, use `volume_tags` instead, which applies uniform tags to all volumes during instance creation.
  final Map<String, String>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final Map<String, String>? tagsAll;

  /// Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for `volume_type` of `gp3`.
  final int? throughput;
  final String? volumeId;

  /// Size of the volume in gibibytes (GiB).
  final int? volumeSize;

  /// Type of volume. Valid values include `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1`, or `st1`. Defaults to `gp2`.
  ///
  /// > **NOTE:** Currently, changes to the `ebs_block_device` configuration of _existing_ resources cannot be automatically detected by this provider. To manage changes and attachments of an EBS block to an instance, use the `aws.ebs.Volume` and `aws.ec2.VolumeAttachment` resources instead. If you use `ebs_block_device` on an `aws.ec2.Instance`, this provider will assume management over the full set of non-root EBS block devices for the instance, treating additional block devices as drift. For this reason, `ebs_block_device` cannot be mixed with external `aws.ebs.Volume` and `aws.ec2.VolumeAttachment` resources for a given instance.
  final String? volumeType;

  /// Creates a new [SpotInstanceRequestEbsBlockDevice].
  /// [deleteOnTermination] Whether the volume should be destroyed on instance termination. Defaults to `true`.
  /// [deviceName] Name of the device to mount.
  /// [encrypted] Enables [EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) on the volume. Defaults to `false`. Cannot be used with `snapshot_id`. Must be configured to perform drift detection.
  /// [iops] Amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). Only valid for volume_type of `io1`, `io2` or `gp3`.
  /// [kmsKeyId] Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.
  /// [snapshotId] Snapshot ID to mount.
  /// [tags] Map of tags to assign to the device. **Note:** Tags specified here are applied after instance creation via a separate API call. This means they cannot be used with IAM policies that require tags during resource creation (e.g., ABAC policies with `ec2:CreateAction` conditions or SCPs requiring volume tags). For ABAC compliance, use `volume_tags` instead, which applies uniform tags to all volumes during instance creation.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughput] Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for `volume_type` of `gp3`.
  /// [volumeId] Optional.
  /// [volumeSize] Size of the volume in gibibytes (GiB).
  /// [volumeType] Type of volume. Valid values include `standard`, `gp2`, `gp3`, `io1`, `io2`, `sc1`, or `st1`. Defaults to `gp2`.
  SpotInstanceRequestEbsBlockDevice({
    this.deleteOnTermination,
    required this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.snapshotId,
    this.tags,
    this.tagsAll,
    this.throughput,
    this.volumeId,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteOnTerminationValue = deleteOnTermination;
    if (deleteOnTerminationValue != null) {
      map['deleteOnTermination'] = deleteOnTerminationValue;
    }
    map['deviceName'] = deviceName;
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tagsAllValue = tagsAll;
    if (tagsAllValue != null) {
      map['tagsAll'] = tagsAllValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final volumeIdValue = volumeId;
    if (volumeIdValue != null) {
      map['volumeId'] = volumeIdValue;
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

  factory SpotInstanceRequestEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestEbsBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceName: map['deviceName'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      snapshotId:
          map['snapshotId'] == null ? null : map['snapshotId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tagsAll: map['tagsAll'] == null
          ? null
          : (map['tagsAll'] as Map).cast<String, String>(),
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
