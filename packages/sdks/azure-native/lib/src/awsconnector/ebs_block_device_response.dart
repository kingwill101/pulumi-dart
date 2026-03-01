// ignore_for_file: unused_element, unnecessary_cast

import 'volume_type_enum_value_response.dart';

/// Definition of EbsBlockDevice
class EbsBlockDeviceResponse {
  /// <p>Indicates whether the EBS volume is deleted on instance termination. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination'>Preserving Amazon EBS volumes on instance termination</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final bool? deleteOnTermination;
  /// <p>Indicates whether the encryption state of an EBS volume is changed while being restored from a backing snapshot. The effect of setting the encryption state to <code>true</code> depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html#encryption-parameters'>Amazon EBS encryption</a> in the <i>Amazon EBS User Guide</i>.</p> <p>In no case can you remove encryption from an encrypted volume.</p> <p>Encrypted volumes can only be attached to instances that support Amazon EBS encryption. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption-requirements.html#ebs-encryption_supported_instances'>Supported instance types</a>.</p> <p>This parameter is not returned by <a>DescribeImageAttribute</a>.</p> <p>For <a>CreateImage</a> and <a>RegisterImage</a>, whether you can include this parameter, and the allowed values differ depending on the type of block device mapping you are creating.</p> <ul> <li> <p>If you are creating a block device mapping for a <b>new (empty) volume</b>, you can include this parameter, and specify either <code>true</code> for an encrypted volume, or <code>false</code> for an unencrypted volume. If you omit this parameter, it defaults to <code>false</code> (unencrypted).</p> </li> <li> <p>If you are creating a block device mapping from an <b>existing encrypted or unencrypted snapshot</b>, you must omit this parameter. If you include this parameter, the request will fail, regardless of the value that you specify.</p> </li> <li> <p>If you are creating a block device mapping from an <b>existing unencrypted volume</b>, you can include this parameter, but you must specify <code>false</code>. If you specify <code>true</code>, the request will fail. In this case, we recommend that you omit the parameter.</p> </li> <li> <p>If you are creating a block device mapping from an <b>existing encrypted volume</b>, you can include this parameter, and specify either <code>true</code> or <code>false</code>. However, if you specify <code>false</code>, the parameter is ignored and the block device mapping is always encrypted. In this case, we recommend that you omit the parameter.</p> </li> </ul>
  final bool? encrypted;
  /// <p>The number of I/O operations per second (IOPS). For <code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes, this represents the number of IOPS that are provisioned for the volume. For <code>gp2</code> volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.</p> <p>The following are the supported values for each volume type:</p> <ul> <li> <p> <code>gp3</code>: 3,000 - 16,000 IOPS</p> </li> <li> <p> <code>io1</code>: 100 - 64,000 IOPS</p> </li> <li> <p> <code>io2</code>: 100 - 256,000 IOPS</p> </li> </ul> <p>For <code>io2</code> volumes, you can achieve up to 256,000 IOPS on <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances'>instances built on the Nitro System</a>. On other instances, you can achieve performance up to 32,000 IOPS.</p> <p>This parameter is required for <code>io1</code> and <code>io2</code> volumes. The default for <code>gp3</code> volumes is 3,000 IOPS.</p>
  final int? iops;
  /// <p>Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer managed CMK under which the EBS volume is encrypted.</p> <p>This parameter is only supported on <code>BlockDeviceMapping</code> objects called by <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html'>RunInstances</a>, <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html'>RequestSpotFleet</a>, and <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html'>RequestSpotInstances</a>.</p>
  final String? kmsKeyId;
  /// <p>The ARN of the Outpost on which the snapshot is stored.</p> <p>This parameter is not supported when using <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html'>CreateImage</a>.</p>
  final String? outpostArn;
  /// <p>The ID of the snapshot.</p>
  final String? snapshotId;
  /// <p>The throughput that the volume supports, in MiB/s.</p> <p>This parameter is valid only for <code>gp3</code> volumes.</p> <p>Valid Range: Minimum value of 125. Maximum value of 1000.</p>
  final int? throughput;
  /// <p>The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size.</p> <p>The following are the supported sizes for each volume type:</p> <ul> <li> <p> <code>gp2</code> and <code>gp3</code>: 1 - 16,384 GiB</p> </li> <li> <p> <code>io1</code>: 4 - 16,384 GiB</p> </li> <li> <p> <code>io2</code>: 4 - 65,536 GiB</p> </li> <li> <p> <code>st1</code> and <code>sc1</code>: 125 - 16,384 GiB</p> </li> <li> <p> <code>standard</code>: 1 - 1024 GiB</p> </li> </ul>
  final int? volumeSize;
  /// <p>The volume type. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html'>Amazon EBS volume types</a> in the <i>Amazon EBS User Guide</i>.</p>
  final VolumeTypeEnumValueResponse? volumeType;

  /// Creates a new [EbsBlockDeviceResponse].
  /// [deleteOnTermination] <p>Indicates whether the EBS volume is deleted on instance termination. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#preserving-volumes-on-termination'>Preserving Amazon EBS volumes on instance termination</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [encrypted] <p>Indicates whether the encryption state of an EBS volume is changed while being restored from a backing snapshot. The effect of setting the encryption state to <code>true</code> depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption.html#encryption-parameters'>Amazon EBS encryption</a> in the <i>Amazon EBS User Guide</i>.</p> <p>In no case can you remove encryption from an encrypted volume.</p> <p>Encrypted volumes can only be attached to instances that support Amazon EBS encryption. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/ebs-encryption-requirements.html#ebs-encryption_supported_instances'>Supported instance types</a>.</p> <p>This parameter is not returned by <a>DescribeImageAttribute</a>.</p> <p>For <a>CreateImage</a> and <a>RegisterImage</a>, whether you can include this parameter, and the allowed values differ depending on the type of block device mapping you are creating.</p> <ul> <li> <p>If you are creating a block device mapping for a <b>new (empty) volume</b>, you can include this parameter, and specify either <code>true</code> for an encrypted volume, or <code>false</code> for an unencrypted volume. If you omit this parameter, it defaults to <code>false</code> (unencrypted).</p> </li> <li> <p>If you are creating a block device mapping from an <b>existing encrypted or unencrypted snapshot</b>, you must omit this parameter. If you include this parameter, the request will fail, regardless of the value that you specify.</p> </li> <li> <p>If you are creating a block device mapping from an <b>existing unencrypted volume</b>, you can include this parameter, but you must specify <code>false</code>. If you specify <code>true</code>, the request will fail. In this case, we recommend that you omit the parameter.</p> </li> <li> <p>If you are creating a block device mapping from an <b>existing encrypted volume</b>, you can include this parameter, and specify either <code>true</code> or <code>false</code>. However, if you specify <code>false</code>, the parameter is ignored and the block device mapping is always encrypted. In this case, we recommend that you omit the parameter.</p> </li> </ul>
  /// [iops] <p>The number of I/O operations per second (IOPS). For <code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes, this represents the number of IOPS that are provisioned for the volume. For <code>gp2</code> volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting.</p> <p>The following are the supported values for each volume type:</p> <ul> <li> <p> <code>gp3</code>: 3,000 - 16,000 IOPS</p> </li> <li> <p> <code>io1</code>: 100 - 64,000 IOPS</p> </li> <li> <p> <code>io2</code>: 100 - 256,000 IOPS</p> </li> </ul> <p>For <code>io2</code> volumes, you can achieve up to 256,000 IOPS on <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances'>instances built on the Nitro System</a>. On other instances, you can achieve performance up to 32,000 IOPS.</p> <p>This parameter is required for <code>io1</code> and <code>io2</code> volumes. The default for <code>gp3</code> volumes is 3,000 IOPS.</p>
  /// [kmsKeyId] <p>Identifier (key ID, key alias, ID ARN, or alias ARN) for a customer managed CMK under which the EBS volume is encrypted.</p> <p>This parameter is only supported on <code>BlockDeviceMapping</code> objects called by <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html'>RunInstances</a>, <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet.html'>RequestSpotFleet</a>, and <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html'>RequestSpotInstances</a>.</p>
  /// [outpostArn] <p>The ARN of the Outpost on which the snapshot is stored.</p> <p>This parameter is not supported when using <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html'>CreateImage</a>.</p>
  /// [snapshotId] <p>The ID of the snapshot.</p>
  /// [throughput] <p>The throughput that the volume supports, in MiB/s.</p> <p>This parameter is valid only for <code>gp3</code> volumes.</p> <p>Valid Range: Minimum value of 125. Maximum value of 1000.</p>
  /// [volumeSize] <p>The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. If you specify a snapshot, the default is the snapshot size. You can specify a volume size that is equal to or larger than the snapshot size.</p> <p>The following are the supported sizes for each volume type:</p> <ul> <li> <p> <code>gp2</code> and <code>gp3</code>: 1 - 16,384 GiB</p> </li> <li> <p> <code>io1</code>: 4 - 16,384 GiB</p> </li> <li> <p> <code>io2</code>: 4 - 65,536 GiB</p> </li> <li> <p> <code>st1</code> and <code>sc1</code>: 125 - 16,384 GiB</p> </li> <li> <p> <code>standard</code>: 1 - 1024 GiB</p> </li> </ul>
  /// [volumeType] <p>The volume type. For more information, see <a href='https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html'>Amazon EBS volume types</a> in the <i>Amazon EBS User Guide</i>.</p>
  EbsBlockDeviceResponse({
    this.deleteOnTermination,
    this.encrypted,
    this.iops,
    this.kmsKeyId,
    this.outpostArn,
    this.snapshotId,
    this.throughput,
    this.volumeSize,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOnTermination': ?deleteOnTermination,
      'encrypted': ?encrypted,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'outpostArn': ?outpostArn,
      'snapshotId': ?snapshotId,
      'throughput': ?throughput,
      'volumeSize': ?volumeSize,
      'volumeType': ?volumeType == null ? null : volumeType!.toMap(),
    };
  }

  factory EbsBlockDeviceResponse.fromMap(Map<String, dynamic> map) {
    return EbsBlockDeviceResponse(
      deleteOnTermination: map['deleteOnTermination'] == null ? null : map['deleteOnTermination'] as bool,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      snapshotId: map['snapshotId'] == null ? null : map['snapshotId'] as String,
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
      volumeType: map['volumeType'] == null ? null : VolumeTypeEnumValueResponse.fromMap((map['volumeType'] as Map).cast<String, dynamic>()),
    );
  }
}

