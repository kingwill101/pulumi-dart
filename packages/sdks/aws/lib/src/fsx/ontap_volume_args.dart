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
  /// Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregateConfiguration` Block] for details.
  final pulumi.Input<OntapVolumeAggregateConfiguration>? aggregateConfiguration;
  /// Whether to allow a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? bypassSnaplockEnterpriseRetention;
  /// Whether tags for the volume should be copied to backups. This value defaults to `false`.
  final pulumi.Input<bool>? copyTagsToBackups;
  /// Map of tags to apply to the volume's final backup.
  final pulumi.Input<Map<String, String>>? finalBackupTags;
  /// Location in the storage virtual machine's namespace where the volume is mounted. The junctionPath must have a leading forward slash, such as `/vol3`
  final pulumi.Input<String>? junctionPath;
  /// Name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  final pulumi.Input<String>? name;
  /// Type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  final pulumi.Input<String>? ontapVolumeType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  final pulumi.Input<String>? securityStyle;
  /// Size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either sizeInBytes or sizeInMegabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  final pulumi.Input<String>? sizeInBytes;
  /// Size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either sizeInBytes or sizeInMegabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  final pulumi.Input<int>? sizeInMegabytes;
  /// Whether to skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? skipFinalBackup;
  /// SnapLock configuration for an FSx for ONTAP volume. See `snaplockConfiguration` Block for details.
  final pulumi.Input<OntapVolumeSnaplockConfiguration>? snaplockConfiguration;
  /// Snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  final pulumi.Input<String>? snapshotPolicy;
  /// Whether to enable deduplication, compression, and compaction storage efficiency features on the volume.
  final pulumi.Input<bool>? storageEfficiencyEnabled;
  /// Storage virtual machine in which to create the volume.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> storageVirtualMachineId;
  /// Map of tags to assign to the volume. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Data tiering policy for an FSx for ONTAP volume. See `tieringPolicy` Block for details.
  final pulumi.Input<OntapVolumeTieringPolicy>? tieringPolicy;
  /// Styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  final pulumi.Input<String>? volumeStyle;
  /// Type of volume, currently the only valid value is `ONTAP`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [OntapVolumeArgs].
  /// [aggregateConfiguration] Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregateConfiguration` Block] for details.
  /// [bypassSnaplockEnterpriseRetention] Whether to allow a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [copyTagsToBackups] Whether tags for the volume should be copied to backups. This value defaults to `false`.
  /// [finalBackupTags] Map of tags to apply to the volume's final backup.
  /// [junctionPath] Location in the storage virtual machine's namespace where the volume is mounted. The junctionPath must have a leading forward slash, such as `/vol3`
  /// [name] Name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  /// [ontapVolumeType] Type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityStyle] Volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  /// [sizeInBytes] Size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either sizeInBytes or sizeInMegabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  /// [sizeInMegabytes] Size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either sizeInBytes or sizeInMegabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  /// [skipFinalBackup] Whether to skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [snaplockConfiguration] SnapLock configuration for an FSx for ONTAP volume. See `snaplockConfiguration` Block for details.
  /// [snapshotPolicy] Snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  /// [storageEfficiencyEnabled] Whether to enable deduplication, compression, and compaction storage efficiency features on the volume.
  /// [storageVirtualMachineId] Storage virtual machine in which to create the volume.
  /// [tags] Map of tags to assign to the volume. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tieringPolicy] Data tiering policy for an FSx for ONTAP volume. See `tieringPolicy` Block for details.
  /// [volumeStyle] Styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  /// [volumeType] Type of volume, currently the only valid value is `ONTAP`.
  const OntapVolumeArgs({
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
      'aggregateConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapVolumeAggregateConfiguration, Map<String, dynamic>>(aggregateConfiguration, (value) => value.toMap()),
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
      'snaplockConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapVolumeSnaplockConfiguration, Map<String, dynamic>>(snaplockConfiguration, (value) => value.toMap()),
      'snapshotPolicy': ?snapshotPolicy,
      'storageEfficiencyEnabled': ?storageEfficiencyEnabled,
      'storageVirtualMachineId': storageVirtualMachineId,
      'tags': ?tags,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<OntapVolumeTieringPolicy, Map<String, dynamic>>(tieringPolicy, (value) => value.toMap()),
      'volumeStyle': ?volumeStyle,
      'volumeType': ?volumeType,
    };
  }

  factory OntapVolumeArgs.fromMap(Map<String, dynamic> map) {
    return OntapVolumeArgs(
      aggregateConfiguration: (() { final guardedValue = map['aggregateConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeAggregateConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bypassSnaplockEnterpriseRetention: (() { final guardedValue = map['bypassSnaplockEnterpriseRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      copyTagsToBackups: (() { final guardedValue = map['copyTagsToBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      finalBackupTags: (() { final guardedValue = map['finalBackupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      junctionPath: (() { final guardedValue = map['junctionPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ontapVolumeType: (() { final guardedValue = map['ontapVolumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityStyle: (() { final guardedValue = map['securityStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInBytes: (() { final guardedValue = map['sizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInMegabytes: (() { final guardedValue = map['sizeInMegabytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      skipFinalBackup: (() { final guardedValue = map['skipFinalBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snaplockConfiguration: (() { final guardedValue = map['snaplockConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeSnaplockConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshotPolicy: (() { final guardedValue = map['snapshotPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageEfficiencyEnabled: (() { final guardedValue = map['storageEfficiencyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageVirtualMachineId: pulumi.Input.fromValue(map['storageVirtualMachineId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tieringPolicy: (() { final guardedValue = map['tieringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapVolumeTieringPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      volumeStyle: (() { final guardedValue = map['volumeStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
