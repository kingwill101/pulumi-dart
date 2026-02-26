// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Volume.
class VolumeArgs {
  /// Availability zone where the EBS volume will exist.
  final Input<String> availabilityZone;

  /// If true, the disk will be encrypted.
  final Input<bool>? encrypted;

  /// If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false
  final Input<bool>? finalSnapshot;

  /// Amount of IOPS to provision for the disk. Only valid for <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> or <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final Input<int>? iops;

  /// ARN for the KMS encryption key. When specifying <span pulumi-lang-nodejs="`kmsKeyId`" pulumi-lang-dotnet="`KmsKeyId`" pulumi-lang-go="`kmsKeyId`" pulumi-lang-python="`kms_key_id`" pulumi-lang-yaml="`kmsKeyId`" pulumi-lang-java="`kmsKeyId`">`kms_key_id`</span>, <span pulumi-lang-nodejs="`encrypted`" pulumi-lang-dotnet="`Encrypted`" pulumi-lang-go="`encrypted`" pulumi-lang-python="`encrypted`" pulumi-lang-yaml="`encrypted`" pulumi-lang-java="`encrypted`">`encrypted`</span> needs to be set to true. Note: The provider must be running with credentials which have the `GenerateDataKeyWithoutPlaintext` permission on the specified KMS key as required by the [EBS KMS CMK volume provisioning process](https://docs.aws.amazon.com/kms/latest/developerguide/services-ebs.html#ebs-cmk) to prevent a volume from being created and almost immediately deleted.
  final Input<String>? kmsKeyId;

  /// Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span> and <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span> volumes.
  final Input<bool>? multiAttachEnabled;

  /// Amazon Resource Name (ARN) of the Outpost.
  final Input<String>? outpostArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Size of the drive in GiBs.
  final Input<int>? size;

  /// A snapshot to base the EBS volume off of.
  final Input<String>? snapshotId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Throughput that the volume supports, in MiB/s. Only valid for <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>.
  final Input<int>? throughput;

  /// Type of EBS volume. Can be <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>, <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>, <span pulumi-lang-nodejs="`gp3`" pulumi-lang-dotnet="`Gp3`" pulumi-lang-go="`gp3`" pulumi-lang-python="`gp3`" pulumi-lang-yaml="`gp3`" pulumi-lang-java="`gp3`">`gp3`</span>, <span pulumi-lang-nodejs="`io1`" pulumi-lang-dotnet="`Io1`" pulumi-lang-go="`io1`" pulumi-lang-python="`io1`" pulumi-lang-yaml="`io1`" pulumi-lang-java="`io1`">`io1`</span>, <span pulumi-lang-nodejs="`io2`" pulumi-lang-dotnet="`Io2`" pulumi-lang-go="`io2`" pulumi-lang-python="`io2`" pulumi-lang-yaml="`io2`" pulumi-lang-java="`io2`">`io2`</span>, <span pulumi-lang-nodejs="`sc1`" pulumi-lang-dotnet="`Sc1`" pulumi-lang-go="`sc1`" pulumi-lang-python="`sc1`" pulumi-lang-yaml="`sc1`" pulumi-lang-java="`sc1`">`sc1`</span> or <span pulumi-lang-nodejs="`st1`" pulumi-lang-dotnet="`St1`" pulumi-lang-go="`st1`" pulumi-lang-python="`st1`" pulumi-lang-yaml="`st1`" pulumi-lang-java="`st1`">`st1`</span> (Default: <span pulumi-lang-nodejs="`gp2`" pulumi-lang-dotnet="`Gp2`" pulumi-lang-go="`gp2`" pulumi-lang-python="`gp2`" pulumi-lang-yaml="`gp2`" pulumi-lang-java="`gp2`">`gp2`</span>).
  final Input<String>? type;

  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume. This argument can only be set if <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> is specified.
  ///
  /// > **NOTE:** At least one of <span pulumi-lang-nodejs="`size`" pulumi-lang-dotnet="`Size`" pulumi-lang-go="`size`" pulumi-lang-python="`size`" pulumi-lang-yaml="`size`" pulumi-lang-java="`size`">`size`</span> or <span pulumi-lang-nodejs="`snapshotId`" pulumi-lang-dotnet="`SnapshotId`" pulumi-lang-go="`snapshotId`" pulumi-lang-python="`snapshot_id`" pulumi-lang-yaml="`snapshotId`" pulumi-lang-java="`snapshotId`">`snapshot_id`</span> is required.
  ///
  /// > **NOTE:** When changing the <span pulumi-lang-nodejs="`size`" pulumi-lang-dotnet="`Size`" pulumi-lang-go="`size`" pulumi-lang-python="`size`" pulumi-lang-yaml="`size`" pulumi-lang-java="`size`">`size`</span>, <span pulumi-lang-nodejs="`iops`" pulumi-lang-dotnet="`Iops`" pulumi-lang-go="`iops`" pulumi-lang-python="`iops`" pulumi-lang-yaml="`iops`" pulumi-lang-java="`iops`">`iops`</span> or <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of an instance, there are [considerations](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/considerations.html) to be aware of.
  final Input<int>? volumeInitializationRate;

  VolumeArgs({
    required this.availabilityZone,
    this.encrypted,
    this.finalSnapshot,
    this.iops,
    this.kmsKeyId,
    this.multiAttachEnabled,
    this.outpostArn,
    this.region,
    this.size,
    this.snapshotId,
    this.tags,
    this.throughput,
    this.type,
    this.volumeInitializationRate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final finalSnapshotValue = finalSnapshot;
    if (finalSnapshotValue != null) {
      map['finalSnapshot'] = finalSnapshotValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final multiAttachEnabledValue = multiAttachEnabled;
    if (multiAttachEnabledValue != null) {
      map['multiAttachEnabled'] = multiAttachEnabledValue;
    }
    final outpostArnValue = outpostArn;
    if (outpostArnValue != null) {
      map['outpostArn'] = outpostArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final volumeInitializationRateValue = volumeInitializationRate;
    if (volumeInitializationRateValue != null) {
      map['volumeInitializationRate'] = volumeInitializationRateValue;
    }
    return map;
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      availabilityZone: Input.asInput<String>(map['availabilityZone']),
      encrypted: Input.asOptionalInput<bool>(map['encrypted']),
      finalSnapshot: Input.asOptionalInput<bool>(map['finalSnapshot']),
      iops: Input.asOptionalInput<int>(map['iops']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      multiAttachEnabled:
          Input.asOptionalInput<bool>(map['multiAttachEnabled']),
      outpostArn: Input.asOptionalInput<String>(map['outpostArn']),
      region: Input.asOptionalInput<String>(map['region']),
      size: Input.asOptionalInput<int>(map['size']),
      snapshotId: Input.asOptionalInput<String>(map['snapshotId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughput: Input.asOptionalInput<int>(map['throughput']),
      type: Input.asOptionalInput<String>(map['type']),
      volumeInitializationRate:
          Input.asOptionalInput<int>(map['volumeInitializationRate']),
    );
  }
}
