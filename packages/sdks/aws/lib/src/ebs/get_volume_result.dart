// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_filter.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e).
  final String? arn;
  /// Availability zone where the EBS volume exists.
  final String? availabilityZone;
  /// Timestamp when volume creation was initiated.
  final String? createTime;
  /// Whether the disk is encrypted.
  final bool? encrypted;
  final List<GetVolumeFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Amount of IOPS for the disk.
  final int? iops;
  /// ARN for the KMS encryption key.
  final String? kmsKeyId;
  final bool? mostRecent;
  /// (Optional) Specifies whether Amazon EBS Multi-Attach is enabled.
  final bool? multiAttachEnabled;
  /// ARN of the Outpost.
  final String? outpostArn;
  final String? region;
  /// Size of the drive in GiBs.
  final int? size;
  /// Snapshot_id the EBS volume is based off.
  final String? snapshotId;
  /// Map of tags for the resource.
  final Map<String, String>? tags;
  /// Throughput that the volume supports, in MiB/s.
  final int? throughput;
  /// Volume ID (e.g., vol-59fcb34e).
  final String? volumeId;
  /// EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume.
  final int? volumeInitializationRate;
  /// Type of EBS volume.
  final String? volumeType;

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
  /// [region] Optional.
  /// [size] Size of the drive in GiBs.
  /// [snapshotId] Snapshot_id the EBS volume is based off.
  /// [tags] Map of tags for the resource.
  /// [throughput] Throughput that the volume supports, in MiB/s.
  /// [volumeId] Volume ID (e.g., vol-59fcb34e).
  /// [volumeInitializationRate] EBS provisioned rate for volume initialization, in MiB/s, at which to download the snapshot blocks from Amazon S3 to the volume.
  /// [volumeType] Type of EBS volume.
  const GetVolumeResult({
    this.arn,
    this.availabilityZone,
    this.createTime,
    this.encrypted,
    this.filters,
    this.id,
    this.iops,
    this.kmsKeyId,
    this.mostRecent,
    this.multiAttachEnabled,
    this.outpostArn,
    this.region,
    this.size,
    this.snapshotId,
    this.tags,
    this.throughput,
    this.volumeId,
    this.volumeInitializationRate,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'createTime': ?createTime,
      'encrypted': ?encrypted,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'mostRecent': ?mostRecent,
      'multiAttachEnabled': ?multiAttachEnabled,
      'outpostArn': ?outpostArn,
      'region': ?region,
      'size': ?size,
      'snapshotId': ?snapshotId,
      'tags': ?tags,
      'throughput': ?throughput,
      'volumeId': ?volumeId,
      'volumeInitializationRate': ?volumeInitializationRate,
      'volumeType': ?volumeType,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeFilter>(guardedValue, (value) => GetVolumeFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      multiAttachEnabled: (() { final guardedValue = map['multiAttachEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshotId: (() { final guardedValue = map['snapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      throughput: (() { final guardedValue = map['throughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeInitializationRate: (() { final guardedValue = map['volumeInitializationRate']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
