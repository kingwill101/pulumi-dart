// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_volume_configuration_managed_ebs_volume_tag_specification.dart';

class ServiceVolumeConfigurationManagedEbsVolume {
  /// Whether the volume should be encrypted. Default value is `true`.
  final pulumi.Input<bool>? encrypted;
  /// Linux filesystem type for the volume. For volumes created from a snapshot, same filesystem type must be specified that the volume was using when the snapshot was created. Valid values are `ext3`, `ext4`, `xfs`. Default value is `xfs`.
  final pulumi.Input<String>? fileSystemType;
  /// Number of I/O operations per second (IOPS).
  final pulumi.Input<int>? iops;
  /// Amazon Resource Name (ARN) identifier of the Amazon Web Services Key Management Service key to use for Amazon EBS encryption.
  final pulumi.Input<String>? kmsKeyId;
  /// Amazon ECS infrastructure IAM role that is used to manage your Amazon Web Services infrastructure. Recommended using the Amazon ECS-managed `AmazonECSInfrastructureRolePolicyForVolumes` IAM policy with this role.
  final pulumi.Input<String> roleArn;
  /// Size of the volume in GiB. You must specify either a `size_in_gb` or a `snapshot_id`. You can optionally specify a volume size greater than or equal to the snapshot size.
  final pulumi.Input<int>? sizeInGb;
  /// Snapshot that Amazon ECS uses to create the volume. You must specify either a `size_in_gb` or a `snapshot_id`.
  final pulumi.Input<String>? snapshotId;
  /// The tags to apply to the volume. See below.
  final pulumi.Input<List<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>>? tagSpecifications;
  /// Throughput to provision for a volume, in MiB/s, with a maximum of 1,000 MiB/s.
  final pulumi.Input<int>? throughput;
  /// Volume Initialization Rate in MiB/s. You must also specify a `snapshot_id`.
  final pulumi.Input<int>? volumeInitializationRate;
  /// Volume type.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [ServiceVolumeConfigurationManagedEbsVolume].
  /// [encrypted] Whether the volume should be encrypted. Default value is `true`.
  /// [fileSystemType] Linux filesystem type for the volume. For volumes created from a snapshot, same filesystem type must be specified that the volume was using when the snapshot was created. Valid values are `ext3`, `ext4`, `xfs`. Default value is `xfs`.
  /// [iops] Number of I/O operations per second (IOPS).
  /// [kmsKeyId] Amazon Resource Name (ARN) identifier of the Amazon Web Services Key Management Service key to use for Amazon EBS encryption.
  /// [roleArn] Amazon ECS infrastructure IAM role that is used to manage your Amazon Web Services infrastructure. Recommended using the Amazon ECS-managed `AmazonECSInfrastructureRolePolicyForVolumes` IAM policy with this role.
  /// [sizeInGb] Size of the volume in GiB. You must specify either a `size_in_gb` or a `snapshot_id`. You can optionally specify a volume size greater than or equal to the snapshot size.
  /// [snapshotId] Snapshot that Amazon ECS uses to create the volume. You must specify either a `size_in_gb` or a `snapshot_id`.
  /// [tagSpecifications] The tags to apply to the volume. See below.
  /// [throughput] Throughput to provision for a volume, in MiB/s, with a maximum of 1,000 MiB/s.
  /// [volumeInitializationRate] Volume Initialization Rate in MiB/s. You must also specify a `snapshot_id`.
  /// [volumeType] Volume type.
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
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'fileSystemType': ?fileSystemType,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'roleArn': roleArn,
      'sizeInGb': ?sizeInGb,
      'snapshotId': ?snapshotId,
      'tagSpecifications': ?pulumi.Input.mapOptionalInputValue<List<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>, List<Map<String, dynamic>>>(tagSpecifications, (value) => pulumi.Input.encodeList<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'throughput': ?throughput,
      'volumeInitializationRate': ?volumeInitializationRate,
      'volumeType': ?volumeType,
    };
  }

  factory ServiceVolumeConfigurationManagedEbsVolume.fromMap(Map<String, dynamic> map) {
    return ServiceVolumeConfigurationManagedEbsVolume(
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      fileSystemType: map['fileSystemType'] == null ? null : (map['fileSystemType'] as String).input(),
      iops: map['iops'] == null ? null : (map['iops'] as int).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      sizeInGb: map['sizeInGb'] == null ? null : (map['sizeInGb'] as int).input(),
      snapshotId: map['snapshotId'] == null ? null : (map['snapshotId'] as String).input(),
      tagSpecifications: map['tagSpecifications'] == null ? null : (pulumi.Input.decodeList<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>(map['tagSpecifications'], (value) => ServiceVolumeConfigurationManagedEbsVolumeTagSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      throughput: map['throughput'] == null ? null : (map['throughput'] as int).input(),
      volumeInitializationRate: map['volumeInitializationRate'] == null ? null : (map['volumeInitializationRate'] as int).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType'] as String).input(),
    );
  }
}

