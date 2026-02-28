// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_filter.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  final String arn;
  /// Availability zone where the EBS volume exists.
  final String availabilityZone;
  /// Timestamp when volume creation was initiated.
  final String createTime;
  /// Whether the disk is encrypted.
  final bool encrypted;
  final List<GetVolumeFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Amount of IOPS for the disk.
  final int iops;
  /// ARN for the KMS encryption key.
  final String kmsKeyId;
  final bool? mostRecent;
  /// (Optional) Specifies whether Amazon EBS Multi-Attach is enabled.
  final bool multiAttachEnabled;
  /// ARN of the Outpost.
  final String outpostArn;
  final String region;
  /// Size of the drive in GiBs.
  final int size;
  /// Snapshot_id the EBS volume is based off.
  final String snapshotId;
  /// Map of tags for the resource.
  final Map<String, String> tags;
  /// Throughput that the volume supports, in MiB/s.
  final int throughput;
  /// Volume ID (e.g., vol-59fcb34e).
  final String volumeId;
  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume.
  final int volumeInitializationRate;
  /// Type of EBS volume.
  final String volumeType;

  /// Creates a new [GetVolumeResult].
  /// [arn] Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  /// [availabilityZone] Availability zone where the EBS volume exists.
  /// [createTime] Timestamp when volume creation was initiated.
  /// [encrypted] Whether the disk is encrypted.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [iops] Amount of IOPS for the disk.
  /// [kmsKeyId] ARN for the KMS encryption key.
  /// [mostRecent] Optional.
  /// [multiAttachEnabled] (Optional) Specifies whether Amazon EBS Multi-Attach is enabled.
  /// [outpostArn] ARN of the Outpost.
  /// [region] Required.
  /// [size] Size of the drive in GiBs.
  /// [snapshotId] Snapshot_id the EBS volume is based off.
  /// [tags] Map of tags for the resource.
  /// [throughput] Throughput that the volume supports, in MiB/s.
  /// [volumeId] Volume ID (e.g., vol-59fcb34e).
  /// [volumeInitializationRate] EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume.
  /// [volumeType] Type of EBS volume.
  GetVolumeResult({
    required this.arn,
    required this.availabilityZone,
    required this.createTime,
    required this.encrypted,
    this.filters,
    required this.id,
    required this.iops,
    required this.kmsKeyId,
    this.mostRecent,
    required this.multiAttachEnabled,
    required this.outpostArn,
    required this.region,
    required this.size,
    required this.snapshotId,
    required this.tags,
    required this.throughput,
    required this.volumeId,
    required this.volumeInitializationRate,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZone': availabilityZone,
      'createTime': createTime,
      'encrypted': encrypted,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVolumeFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'iops': iops,
      'kmsKeyId': kmsKeyId,
      'mostRecent': ?mostRecent,
      'multiAttachEnabled': multiAttachEnabled,
      'outpostArn': outpostArn,
      'region': region,
      'size': size,
      'snapshotId': snapshotId,
      'tags': tags,
      'throughput': throughput,
      'volumeId': volumeId,
      'volumeInitializationRate': volumeInitializationRate,
      'volumeType': volumeType,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      arn: map['arn'] as String,
      availabilityZone: map['availabilityZone'] as String,
      createTime: map['createTime'] as String,
      encrypted: map['encrypted'] as bool,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVolumeFilter>(map['filters'], (value) => GetVolumeFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      multiAttachEnabled: map['multiAttachEnabled'] as bool,
      outpostArn: map['outpostArn'] as String,
      region: map['region'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      throughput: map['throughput'] as int,
      volumeId: map['volumeId'] as String,
      volumeInitializationRate: map['volumeInitializationRate'] as int,
      volumeType: map['volumeType'] as String,
    );
  }
}

