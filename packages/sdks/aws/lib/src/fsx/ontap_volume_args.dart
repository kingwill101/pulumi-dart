// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_volume_aggregate_configuration.dart';
import 'ontap_volume_snaplock_configuration.dart';
import 'ontap_volume_tiering_policy.dart';

/// {@template pulumi_fsx_ontap_volume_ontap_volume_args_doc}
/// The set of arguments for OntapVolume.
/// {@endtemplate}
/// {@macro pulumi_fsx_ontap_volume_ontap_volume_args_doc}
class OntapVolumeArgs {
  /// The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  final pulumi.Input<OntapVolumeAggregateConfiguration>? aggregateConfiguration;

  /// Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? bypassSnaplockEnterpriseRetention;

  /// A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  final pulumi.Input<bool>? copyTagsToBackups;

  /// A map of tags to apply to the volume's final backup.
  final pulumi.Input<Map<String, String>>? finalBackupTags;

  /// Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as `/vol3`
  final pulumi.Input<String>? junctionPath;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  final pulumi.Input<String>? name;

  /// Specifies the type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  final pulumi.Input<String>? ontapVolumeType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  final pulumi.Input<String>? securityStyle;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  final pulumi.Input<String>? sizeInBytes;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  final pulumi.Input<int>? sizeInMegabytes;

  /// When enabled, will skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? skipFinalBackup;

  /// The SnapLock configuration for an FSx for ONTAP volume. See `snaplock_configuration` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfiguration>? snaplockConfiguration;

  /// Specifies the snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  final pulumi.Input<String>? snapshotPolicy;

  /// Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume.
  final pulumi.Input<bool>? storageEfficiencyEnabled;

  /// Specifies the storage virtual machine in which to create the volume.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> storageVirtualMachineId;

  /// A map of tags to assign to the volume. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  final pulumi.Input<OntapVolumeTieringPolicy>? tieringPolicy;

  /// Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  final pulumi.Input<String>? volumeStyle;

  /// The type of volume, currently the only valid value is `ONTAP`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [OntapVolumeArgs].
  /// [aggregateConfiguration] The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  /// [bypassSnaplockEnterpriseRetention] Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [copyTagsToBackups] A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  /// [finalBackupTags] A map of tags to apply to the volume's final backup.
  /// [junctionPath] Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as `/vol3`
  /// [name] The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  /// [ontapVolumeType] Specifies the type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityStyle] Specifies the volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  /// [sizeInBytes] Specifies the size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  /// [sizeInMegabytes] Specifies the size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [snaplockConfiguration] The SnapLock configuration for an FSx for ONTAP volume. See `snaplock_configuration` Block for details.
  /// [snapshotPolicy] Specifies the snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  /// [storageEfficiencyEnabled] Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume.
  /// [storageVirtualMachineId] Specifies the storage virtual machine in which to create the volume.
  /// [tags] A map of tags to assign to the volume. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tieringPolicy] The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  /// [volumeStyle] Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  /// [volumeType] The type of volume, currently the only valid value is `ONTAP`.
  OntapVolumeArgs({
    this.aggregateConfiguration,
    this.bypassSnaplockEnterpriseRetention,
    this.copyTagsToBackups,
    this.finalBackupTags,
    this.junctionPath,
    this.name,
    this.ontapVolumeType,
    this.region,
    this.securityStyle,
    this.sizeInBytes,
    this.sizeInMegabytes,
    this.skipFinalBackup,
    this.snaplockConfiguration,
    this.snapshotPolicy,
    this.storageEfficiencyEnabled,
    required this.storageVirtualMachineId,
    this.tags,
    this.tieringPolicy,
    this.volumeStyle,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            OntapVolumeAggregateConfiguration,
            Map<String, dynamic>
          >(aggregateConfiguration, (value) => value.toMap()),
      'bypassSnaplockEnterpriseRetention': ?bypassSnaplockEnterpriseRetention,
      'copyTagsToBackups': ?copyTagsToBackups,
      'finalBackupTags': ?finalBackupTags,
      'junctionPath': ?junctionPath,
      'name': ?name,
      'ontapVolumeType': ?ontapVolumeType,
      'region': ?region,
      'securityStyle': ?securityStyle,
      'sizeInBytes': ?sizeInBytes,
      'sizeInMegabytes': ?sizeInMegabytes,
      'skipFinalBackup': ?skipFinalBackup,
      'snaplockConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            OntapVolumeSnaplockConfiguration,
            Map<String, dynamic>
          >(snaplockConfiguration, (value) => value.toMap()),
      'snapshotPolicy': ?snapshotPolicy,
      'storageEfficiencyEnabled': ?storageEfficiencyEnabled,
      'storageVirtualMachineId': storageVirtualMachineId,
      'tags': ?tags,
      'tieringPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            OntapVolumeTieringPolicy,
            Map<String, dynamic>
          >(tieringPolicy, (value) => value.toMap()),
      'volumeStyle': ?volumeStyle,
      'volumeType': ?volumeType,
    };
  }

  factory OntapVolumeArgs.fromMap(Map<String, dynamic> map) {
    return OntapVolumeArgs(
      aggregateConfiguration: (() {
        final guardedValue = map['aggregateConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OntapVolumeAggregateConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bypassSnaplockEnterpriseRetention: (() {
        final guardedValue = map['bypassSnaplockEnterpriseRetention'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      copyTagsToBackups: (() {
        final guardedValue = map['copyTagsToBackups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      finalBackupTags: (() {
        final guardedValue = map['finalBackupTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      junctionPath: (() {
        final guardedValue = map['junctionPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ontapVolumeType: (() {
        final guardedValue = map['ontapVolumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityStyle: (() {
        final guardedValue = map['securityStyle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sizeInBytes: (() {
        final guardedValue = map['sizeInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sizeInMegabytes: (() {
        final guardedValue = map['sizeInMegabytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      skipFinalBackup: (() {
        final guardedValue = map['skipFinalBackup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snaplockConfiguration: (() {
        final guardedValue = map['snaplockConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OntapVolumeSnaplockConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      snapshotPolicy: (() {
        final guardedValue = map['snapshotPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageEfficiencyEnabled: (() {
        final guardedValue = map['storageEfficiencyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageVirtualMachineId: pulumi.Input.fromValue(
        map['storageVirtualMachineId'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tieringPolicy: (() {
        final guardedValue = map['tieringPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OntapVolumeTieringPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      volumeStyle: (() {
        final guardedValue = map['volumeStyle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeType: (() {
        final guardedValue = map['volumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
