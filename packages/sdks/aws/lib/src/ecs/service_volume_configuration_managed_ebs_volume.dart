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
  final pulumi.Input<
    List<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>
  >?
  tagSpecifications;

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
      'tagSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceVolumeConfigurationManagedEbsVolumeTagSpecification>,
            List<Map<String, dynamic>>
          >(
            tagSpecifications,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceVolumeConfigurationManagedEbsVolumeTagSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'throughput': ?throughput,
      'volumeInitializationRate': ?volumeInitializationRate,
      'volumeType': ?volumeType,
    };
  }

  factory ServiceVolumeConfigurationManagedEbsVolume.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceVolumeConfigurationManagedEbsVolume(
      encrypted: (() {
        final guardedValue = map['encrypted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fileSystemType: (() {
        final guardedValue = map['fileSystemType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iops: (() {
        final guardedValue = map['iops'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      sizeInGb: (() {
        final guardedValue = map['sizeInGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      snapshotId: (() {
        final guardedValue = map['snapshotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagSpecifications: (() {
        final guardedValue = map['tagSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServiceVolumeConfigurationManagedEbsVolumeTagSpecification
          >(
            guardedValue,
            (value) =>
                ServiceVolumeConfigurationManagedEbsVolumeTagSpecification.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      throughput: (() {
        final guardedValue = map['throughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeInitializationRate: (() {
        final guardedValue = map['volumeInitializationRate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeType: (() {
        final guardedValue = map['volumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
