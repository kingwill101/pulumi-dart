// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_volume_configuration_managed_ebs_volume_tag_specification/service_volume_configuration_managed_ebs_volume_tag_specification.dart';

class ServiceVolumeConfigurationManagedEbsVolume {
  /// Whether the volume should be encrypted. Default value is `true`.
  final bool? encrypted;

  /// Linux filesystem type for the volume. For volumes created from a snapshot, same filesystem type must be specified that the volume was using when the snapshot was created. Valid values are `ext3`, `ext4`, `xfs`. Default value is `xfs`.
  final String? fileSystemType;

  /// Number of I/O operations per second (IOPS).
  final int? iops;

  /// Amazon Resource Name (ARN) identifier of the Amazon Web Services Key Management Service key to use for Amazon EBS encryption.
  final String? kmsKeyId;

  /// Amazon ECS infrastructure IAM role that is used to manage your Amazon Web Services infrastructure. Recommended using the Amazon ECS-managed `AmazonECSInfrastructureRolePolicyForVolumes` IAM policy with this role.
  final String roleArn;

  /// Size of the volume in GiB. You must specify either a `size_in_gb` or a `snapshot_id`. You can optionally specify a volume size greater than or equal to the snapshot size.
  final int? sizeInGb;

  /// Snapshot that Amazon ECS uses to create the volume. You must specify either a `size_in_gb` or a `snapshot_id`.
  final String? snapshotId;

  /// The tags to apply to the volume. See below.
  final List<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>?
      tagSpecifications;

  /// Throughput to provision for a volume, in MiB/s, with a maximum of 1,000 MiB/s.
  final int? throughput;

  /// Volume Initialization Rate in MiB/s. You must also specify a `snapshot_id`.
  final int? volumeInitializationRate;

  /// Volume type.
  final String? volumeType;

  ServiceVolumeConfigurationManagedEbsVolume({
    this.encrypted,
    this.fileSystemType,
    this.iops,
    this.kmsKeyId,
    required this.roleArn,
    this.sizeInGb,
    this.snapshotId,
    this.tagSpecifications,
    this.throughput,
    this.volumeInitializationRate,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptedValue = encrypted;
    if (encryptedValue != null) {
      map['encrypted'] = encryptedValue;
    }
    final fileSystemTypeValue = fileSystemType;
    if (fileSystemTypeValue != null) {
      map['fileSystemType'] = fileSystemTypeValue;
    }
    final iopsValue = iops;
    if (iopsValue != null) {
      map['iops'] = iopsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    map['roleArn'] = roleArn;
    final sizeInGbValue = sizeInGb;
    if (sizeInGbValue != null) {
      map['sizeInGb'] = sizeInGbValue;
    }
    final snapshotIdValue = snapshotId;
    if (snapshotIdValue != null) {
      map['snapshotId'] = snapshotIdValue;
    }
    final tagSpecificationsValue = tagSpecifications;
    if (tagSpecificationsValue != null) {
      map['tagSpecifications'] = pulumi.Input.encodeList<
              ServiceVolumeConfigurationManagedEbsVolumeTagSpecification,
              Map<String, dynamic>>(
          tagSpecificationsValue, (value) => value.toMap());
    }
    final throughputValue = throughput;
    if (throughputValue != null) {
      map['throughput'] = throughputValue;
    }
    final volumeInitializationRateValue = volumeInitializationRate;
    if (volumeInitializationRateValue != null) {
      map['volumeInitializationRate'] = volumeInitializationRateValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory ServiceVolumeConfigurationManagedEbsVolume.fromMap(
      Map<String, dynamic> map) {
    return ServiceVolumeConfigurationManagedEbsVolume(
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      fileSystemType: map['fileSystemType'] == null
          ? null
          : map['fileSystemType'] as String,
      iops: map['iops'] == null ? null : map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      roleArn: map['roleArn'] as String,
      sizeInGb: map['sizeInGb'] == null ? null : map['sizeInGb'] as int,
      snapshotId:
          map['snapshotId'] == null ? null : map['snapshotId'] as String,
      tagSpecifications: map['tagSpecifications'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>(
              map['tagSpecifications'],
              (value) =>
                  ServiceVolumeConfigurationManagedEbsVolumeTagSpecification
                      .fromMap((value as Map).cast<String, dynamic>())),
      throughput: map['throughput'] == null ? null : map['throughput'] as int,
      volumeInitializationRate: map['volumeInitializationRate'] == null
          ? null
          : map['volumeInitializationRate'] as int,
      volumeType:
          map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}
