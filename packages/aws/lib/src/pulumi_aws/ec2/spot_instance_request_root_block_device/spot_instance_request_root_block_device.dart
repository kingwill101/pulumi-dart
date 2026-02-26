// ignore_for_file: unused_element, unnecessary_cast

class SpotInstanceRequestRootBlockDevice {
  /// Whether the volume should be destroyed on instance termination. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? deleteOnTermination;
  final String? deviceName;

  /// Whether to enable volume encryption. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Must be configured to perform drift detection.
  final bool? encrypted;

  /// Amount of provisioned [IOPS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-io-characteristics.html). Only valid for<span pulumi-lang-nodejs=" volumeType " pulumi-lang-dotnet=" VolumeType " pulumi-lang-go=" volumeType " pulumi-lang-python=" volume_type " pulumi-lang-yaml=" volumeType " pulumi-lang-java=" volumeType "> volume_type </span>of <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> or <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final int? iops;

  /// Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection.
  final String? kmsKeyId;

  /// Map of tags to assign to the device. **Note:** Tags specified here are applied after instance creation via a separate API call. This means they cannot be used with IAM policies that require tags during resource creation (e.g., ABAC policies with `ec2:CreateAction` conditions or SCPs requiring volume tags). For ABAC compliance, use <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span> instead, which applies uniform tags to all volumes during instance creation.
  final Map<String, String>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  final Map<String, String>? tagsAll;

  /// Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for <span pulumi-lang-nodejs="`volumeType`" pulumi-lang-dotnet="`VolumeType`" pulumi-lang-go="`volumeType`" pulumi-lang-python="`volume_type`" pulumi-lang-yaml="`volumeType`" pulumi-lang-java="`volumeType`">`volume_type`</span> of <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final int? throughput;
  final String? volumeId;

  /// Size of the volume in gibibytes (GiB).
  final int? volumeSize;

  /// Type of volume. Valid values include <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>, <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>, <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span>, <span pulumi-lang-nodejs="`sc1`" pulumi-lang-dotnet="`Sc1`" pulumi-lang-go="`sc1`" pulumi-lang-python="`sc1`" pulumi-lang-yaml="`sc1`" pulumi-lang-java="`sc1`">`sc1`</span>, or <span pulumi-lang-nodejs="`st1`" pulumi-lang-dotnet="`St1`" pulumi-lang-go="`st1`" pulumi-lang-python="`st1`" pulumi-lang-yaml="`st1`" pulumi-lang-java="`st1`">`st1`</span>. Defaults to the volume type that the AMI uses.
  ///
  /// Modifying the <span pulumi-lang-nodejs="`encrypted`" pulumi-lang-dotnet="`Encrypted`" pulumi-lang-go="`encrypted`" pulumi-lang-python="`encrypted`" pulumi-lang-yaml="`encrypted`" pulumi-lang-java="`encrypted`">`encrypted`</span> or <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span> settings of the <span pulumi-lang-nodejs="`rootBlockDevice`" pulumi-lang-dotnet="`RootBlockDevice`" pulumi-lang-go="`rootBlockDevice`" pulumi-lang-python="`root_block_device`" pulumi-lang-yaml="`rootBlockDevice`" pulumi-lang-java="`rootBlockDevice`">`root_block_device`</span> requires resource replacement.
  final String? volumeType;

  SpotInstanceRequestRootBlockDevice({
    this.deleteOnTermination,
    this.deviceName,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
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
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
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

  factory SpotInstanceRequestRootBlockDevice.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestRootBlockDevice(
      deleteOnTermination: map['deleteOnTermination'] == null
          ? null
          : map['deleteOnTermination'] as bool,
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
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
