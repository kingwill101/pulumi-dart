// ignore_for_file: unused_element, unnecessary_cast

class InstanceEbsBlockDevice {
  /// Whether the volume should be destroyed on instance termination. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? deleteOnTermination;

  /// Name of the device to mount.
  final String deviceName;

  /// Enables [EBS encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) on the volume. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Cannot be used with <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span>. Must be configured to perform drift detection.
  final bool? encrypted;

  /// Amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). Only valid for<span pulumi-lang-nodejs=" volumeType " pulumi-lang-dotnet=" VolumeType " pulumi-lang-go=" volumeType " pulumi-lang-python=" volume_type " pulumi-lang-yaml=" volumeType " pulumi-lang-java=" volumeType "> volume_type </span>of <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> or <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final int? iops;

  /// Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.
  final String? kmsKeyId;

  /// Snapshot ID to mount.
  final String? snapshotId;

  /// Map of tags to assign to the device. **Note:** Tags specified here are applied after instance creation via a separate API call. This means they cannot be used with IAM policies that require tags during resource creation (e.g., ABAC policies with `ec2:CreateAction` conditions or SCPs requiring volume tags). For ABAC compliance, use <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span> instead, which applies uniform tags to all volumes during instance creation.
  final Map<String, String>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  final Map<String, String>? tagsAll;

  /// Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for <span pulumi-lang-nodejs="`volumeType`" pulumi-lang-dotnet="`VolumeType`" pulumi-lang-go="`volumeType`" pulumi-lang-python="`volume_type`" pulumi-lang-yaml="`volumeType`" pulumi-lang-java="`volumeType`">`volume_type`</span> of <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final int? throughput;

  /// ID of the volume. For example, the ID can be accessed like this, `aws_instance.web.root_block_device.0.volume_id`.
  final String? volumeId;

  /// Size of the volume in gibibytes (GiB).
  final int? volumeSize;

  /// Type of volume. Valid values include <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>, <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>, <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span>, <span pulumi-lang-nodejs="`sc1`" pulumi-lang-dotnet="`Sc1`" pulumi-lang-go="`sc1`" pulumi-lang-python="`sc1`" pulumi-lang-yaml="`sc1`" pulumi-lang-java="`sc1`">`sc1`</span>, or <span pulumi-lang-nodejs="`st1`" pulumi-lang-dotnet="`St1`" pulumi-lang-go="`st1`" pulumi-lang-python="`st1`" pulumi-lang-yaml="`st1`" pulumi-lang-java="`st1`">`st1`</span>. Defaults to <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>.
  ///
  /// > **NOTE:** Currently, changes to the <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> configuration of _existing_ resources cannot be automatically detected by this provider. To manage changes and attachments of an EBS block to an instance, use the <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> and <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span> resources instead. If you use <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> on an <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span>, this provider will assume management over the full set of non-root EBS block devices for the instance, treating additional block devices as drift. For this reason, <span pulumi-lang-nodejs="`ebsBlockDevice`" pulumi-lang-dotnet="`EbsBlockDevice`" pulumi-lang-go="`ebsBlockDevice`" pulumi-lang-python="`ebs_block_device`" pulumi-lang-yaml="`ebsBlockDevice`" pulumi-lang-java="`ebsBlockDevice`">`ebs_block_device`</span> cannot be mixed with external <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> and <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span> resources for a given instance.
  final String? volumeType;

  InstanceEbsBlockDevice({
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

  factory InstanceEbsBlockDevice.fromMap(Map<String, dynamic> map) {
    return InstanceEbsBlockDevice(
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
