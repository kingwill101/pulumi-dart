// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsEc2Volume
class AwsEc2VolumePropertiesResponse {
  /// Indicates whether the volume is auto-enabled for I/O operations. By default, Amazon EBS disables I/O to the volume from attached EC2 instances when it determines that a volume's data is potentially inconsistent. If the consistency of the volume is not a concern, and you prefer that the volume be made available immediately if it's impaired, you can configure the volume to automatically enable I/O.
  final pulumi.Input<bool>? autoEnableIO;
  /// The ID of the Availability Zone in which to create the volume. For example, ``us-east-1a``.
  final pulumi.Input<String>? availabilityZone;
  /// Indicates whether the volume should be encrypted. The effect of setting the encryption state to ``true`` depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see [Encryption by default](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default) in the *Amazon Elastic Compute Cloud User Guide*. Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see [Supported instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).
  final pulumi.Input<bool>? encrypted;
  /// The number of I/O operations per second (IOPS). For ``gp3``, ``io1``, and ``io2`` volumes, this represents the number of IOPS that are provisioned for the volume. For ``gp2`` volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. The following are the supported values for each volume type:  +   ``gp3``: 3,000 - 16,000 IOPS  +   ``io1``: 100 - 64,000 IOPS  +   ``io2``: 100 - 256,000 IOPS   For ``io2`` volumes, you can achieve up to 256,000 IOPS on [instances built on the Nitro System](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances). On other instances, you can achieve performance up to 32,000 IOPS. This parameter is required for ``io1`` and ``io2`` volumes. The default for ``gp3`` volumes is 3,000 IOPS. This parameter is not supported for ``gp2``, ``st1``, ``sc1``, or ``standard`` volumes.
  final pulumi.Input<int>? iops;
  /// The identifier of the kms-key-long to use for Amazon EBS encryption. If ``KmsKeyId`` is specified, the encrypted state must be ``true``. If you omit this property and your account is enabled for encryption by default, or *Encrypted* is set to ``true``, then the volume is encrypted using the default key specified for your account. If your account does not have a default key, then the volume is encrypted using the aws-managed-key. Alternatively, if you want to specify a different key, you can specify one of the following:  +  Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.  +  Key alias. Specify the alias for the key, prefixed with ``alias/``. For example, for a key with the alias ``my_cmk``, use ``alias/my_cmk``. Or to specify the aws-managed-key, use ``alias/aws/ebs``.  +  Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.  +  Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
  final pulumi.Input<String>? kmsKeyId;
  /// Indicates whether Amazon EBS Multi-Attach is enabled. CFNlong does not currently support updating a single-attach volume to be multi-attach enabled, updating a multi-attach enabled volume to be single-attach, or updating the size or number of I/O operations per second (IOPS) of a multi-attach enabled volume.
  final pulumi.Input<bool>? multiAttachEnabled;
  /// The Amazon Resource Name (ARN) of the Outpost.
  final pulumi.Input<String>? outpostArn;
  /// The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size. The following are the supported volumes sizes for each volume type:  +   ``gp2`` and ``gp3``: 1 - 16,384 GiB  +   ``io1``: 4 - 16,384 GiB  +   ``io2``: 4 - 65,536 GiB  +   ``st1`` and ``sc1``: 125 - 16,384 GiB  +   ``standard``: 1 - 1024 GiB
  final pulumi.Input<int>? size;
  /// The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size.
  final pulumi.Input<String>? snapshotId;
  /// The tags to apply to the volume during creation.
  final pulumi.Input<List<TagResponse>>? tags;
  /// The throughput to provision for a volume, with a maximum of 1,000 MiB/s. This parameter is valid only for ``gp3`` volumes. The default value is 125. Valid Range: Minimum value of 125. Maximum value of 1000.
  final pulumi.Input<int>? throughput;
  /// Property volumeId
  final pulumi.Input<String>? volumeId;
  /// The volume type. This parameter can be one of the following values:  +  General Purpose SSD: ``gp2`` | ``gp3``   +  Provisioned IOPS SSD: ``io1`` | ``io2``   +  Throughput Optimized HDD: ``st1``   +  Cold HDD: ``sc1``   +  Magnetic: ``standard``    For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the *Amazon Elastic Compute Cloud User Guide*. Default: ``gp2``
  final pulumi.Input<String>? volumeType;

  /// Creates a new [AwsEc2VolumePropertiesResponse].
  /// [autoEnableIO] Indicates whether the volume is auto-enabled for I/O operations. By default, Amazon EBS disables I/O to the volume from attached EC2 instances when it determines that a volume's data is potentially inconsistent. If the consistency of the volume is not a concern, and you prefer that the volume be made available immediately if it's impaired, you can configure the volume to automatically enable I/O.
  /// [availabilityZone] The ID of the Availability Zone in which to create the volume. For example, ``us-east-1a``.
  /// [encrypted] Indicates whether the volume should be encrypted. The effect of setting the encryption state to ``true`` depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see [Encryption by default](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#encryption-by-default) in the *Amazon Elastic Compute Cloud User Guide*. Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see [Supported instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances).
  /// [iops] The number of I/O operations per second (IOPS). For ``gp3``, ``io1``, and ``io2`` volumes, this represents the number of IOPS that are provisioned for the volume. For ``gp2`` volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. The following are the supported values for each volume type:  +   ``gp3``: 3,000 - 16,000 IOPS  +   ``io1``: 100 - 64,000 IOPS  +   ``io2``: 100 - 256,000 IOPS   For ``io2`` volumes, you can achieve up to 256,000 IOPS on [instances built on the Nitro System](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances). On other instances, you can achieve performance up to 32,000 IOPS. This parameter is required for ``io1`` and ``io2`` volumes. The default for ``gp3`` volumes is 3,000 IOPS. This parameter is not supported for ``gp2``, ``st1``, ``sc1``, or ``standard`` volumes.
  /// [kmsKeyId] The identifier of the kms-key-long to use for Amazon EBS encryption. If ``KmsKeyId`` is specified, the encrypted state must be ``true``. If you omit this property and your account is enabled for encryption by default, or *Encrypted* is set to ``true``, then the volume is encrypted using the default key specified for your account. If your account does not have a default key, then the volume is encrypted using the aws-managed-key. Alternatively, if you want to specify a different key, you can specify one of the following:  +  Key ID. For example, 1234abcd-12ab-34cd-56ef-1234567890ab.  +  Key alias. Specify the alias for the key, prefixed with ``alias/``. For example, for a key with the alias ``my_cmk``, use ``alias/my_cmk``. Or to specify the aws-managed-key, use ``alias/aws/ebs``.  +  Key ARN. For example, arn:aws:kms:us-east-1:012345678910:key/1234abcd-12ab-34cd-56ef-1234567890ab.  +  Alias ARN. For example, arn:aws:kms:us-east-1:012345678910:alias/ExampleAlias.
  /// [multiAttachEnabled] Indicates whether Amazon EBS Multi-Attach is enabled. CFNlong does not currently support updating a single-attach volume to be multi-attach enabled, updating a multi-attach enabled volume to be single-attach, or updating the size or number of I/O operations per second (IOPS) of a multi-attach enabled volume.
  /// [outpostArn] The Amazon Resource Name (ARN) of the Outpost.
  /// [size] The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size. The following are the supported volumes sizes for each volume type:  +   ``gp2`` and ``gp3``: 1 - 16,384 GiB  +   ``io1``: 4 - 16,384 GiB  +   ``io2``: 4 - 65,536 GiB  +   ``st1`` and ``sc1``: 125 - 16,384 GiB  +   ``standard``: 1 - 1024 GiB
  /// [snapshotId] The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size.
  /// [tags] The tags to apply to the volume during creation.
  /// [throughput] The throughput to provision for a volume, with a maximum of 1,000 MiB/s. This parameter is valid only for ``gp3`` volumes. The default value is 125. Valid Range: Minimum value of 125. Maximum value of 1000.
  /// [volumeId] Property volumeId
  /// [volumeType] The volume type. This parameter can be one of the following values:  +  General Purpose SSD: ``gp2`` | ``gp3``   +  Provisioned IOPS SSD: ``io1`` | ``io2``   +  Throughput Optimized HDD: ``st1``   +  Cold HDD: ``sc1``   +  Magnetic: ``standard``    For more information, see [Amazon EBS volume types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the *Amazon Elastic Compute Cloud User Guide*. Default: ``gp2``
  AwsEc2VolumePropertiesResponse({
    this.autoEnableIO,
    this.availabilityZone,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.multiAttachEnabled,
    this.outpostArn,
    this.size,
    this.snapshotId,
    this.tags,
    this.throughput,
    this.volumeId,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnableIO': ?autoEnableIO,
      'availabilityZone': ?availabilityZone,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'multiAttachEnabled': ?multiAttachEnabled,
      'outpostArn': ?outpostArn,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'throughput': ?throughput,
      'volumeId': ?volumeId,
      'volumeType': ?volumeType,
    };
  }

  factory AwsEc2VolumePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2VolumePropertiesResponse(
      autoEnableIO: map['autoEnableIO'] == null ? null : (map['autoEnableIO']! as bool).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      iops: map['iops'] == null ? null : (map['iops']! as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId']! as String).input(),
      multiAttachEnabled: map['multiAttachEnabled'] == null ? null : (map['multiAttachEnabled']! as bool).input(),
      outpostArn: map['outpostArn'] == null ? null : (map['outpostArn']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagResponse>(map['tags']!, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      throughput: map['throughput'] == null ? null : (map['throughput']! as int).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId']! as String).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType']! as String).input(),
    );
  }
}

