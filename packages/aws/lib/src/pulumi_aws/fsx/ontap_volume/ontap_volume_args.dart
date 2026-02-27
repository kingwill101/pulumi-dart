// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ontap_volume_aggregate_configuration/ontap_volume_aggregate_configuration.dart';
import '../ontap_volume_snaplock_configuration/ontap_volume_snaplock_configuration.dart';
import '../ontap_volume_tiering_policy/ontap_volume_tiering_policy.dart';

/// The set of arguments for OntapVolume.
class OntapVolumeArgs {
  /// The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  final Input<OntapVolumeAggregateConfiguration>? aggregateConfiguration;

  /// Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final Input<bool>? bypassSnaplockEnterpriseRetention;

  /// A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  final Input<bool>? copyTagsToBackups;

  /// A map of tags to apply to the volume's final backup.
  final Input<Map<String, String>>? finalBackupTags;

  /// Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as `/vol3`
  final Input<String>? junctionPath;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  final Input<String>? name;

  /// Specifies the type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  final Input<String>? ontapVolumeType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  final Input<String>? securityStyle;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  final Input<String>? sizeInBytes;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  final Input<int>? sizeInMegabytes;

  /// When enabled, will skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final Input<bool>? skipFinalBackup;

  /// The SnapLock configuration for an FSx for ONTAP volume. See `snaplock_configuration` Block for details.
  final Input<OntapVolumeSnaplockConfiguration>? snaplockConfiguration;

  /// Specifies the snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  final Input<String>? snapshotPolicy;

  /// Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume.
  final Input<bool>? storageEfficiencyEnabled;

  /// Specifies the storage virtual machine in which to create the volume.
  ///
  /// The following arguments are optional:
  final Input<String> storageVirtualMachineId;

  /// A map of tags to assign to the volume. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  final Input<OntapVolumeTieringPolicy>? tieringPolicy;

  /// Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  final Input<String>? volumeStyle;

  /// The type of volume, currently the only valid value is `ONTAP`.
  final Input<String>? volumeType;

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
    final map = <String, dynamic>{};
    final aggregateConfigurationValue = aggregateConfiguration;
    if (aggregateConfigurationValue != null) {
      map['aggregateConfiguration'] = Input.mapOptionalInputValue<
              OntapVolumeAggregateConfiguration, Map<String, dynamic>>(
          aggregateConfigurationValue, (value) => value.toMap());
    }
    final bypassSnaplockEnterpriseRetentionValue =
        bypassSnaplockEnterpriseRetention;
    if (bypassSnaplockEnterpriseRetentionValue != null) {
      map['bypassSnaplockEnterpriseRetention'] =
          bypassSnaplockEnterpriseRetentionValue;
    }
    final copyTagsToBackupsValue = copyTagsToBackups;
    if (copyTagsToBackupsValue != null) {
      map['copyTagsToBackups'] = copyTagsToBackupsValue;
    }
    final finalBackupTagsValue = finalBackupTags;
    if (finalBackupTagsValue != null) {
      map['finalBackupTags'] = finalBackupTagsValue;
    }
    final junctionPathValue = junctionPath;
    if (junctionPathValue != null) {
      map['junctionPath'] = junctionPathValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final ontapVolumeTypeValue = ontapVolumeType;
    if (ontapVolumeTypeValue != null) {
      map['ontapVolumeType'] = ontapVolumeTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityStyleValue = securityStyle;
    if (securityStyleValue != null) {
      map['securityStyle'] = securityStyleValue;
    }
    final sizeInBytesValue = sizeInBytes;
    if (sizeInBytesValue != null) {
      map['sizeInBytes'] = sizeInBytesValue;
    }
    final sizeInMegabytesValue = sizeInMegabytes;
    if (sizeInMegabytesValue != null) {
      map['sizeInMegabytes'] = sizeInMegabytesValue;
    }
    final skipFinalBackupValue = skipFinalBackup;
    if (skipFinalBackupValue != null) {
      map['skipFinalBackup'] = skipFinalBackupValue;
    }
    final snaplockConfigurationValue = snaplockConfiguration;
    if (snaplockConfigurationValue != null) {
      map['snaplockConfiguration'] = Input.mapOptionalInputValue<
              OntapVolumeSnaplockConfiguration, Map<String, dynamic>>(
          snaplockConfigurationValue, (value) => value.toMap());
    }
    final snapshotPolicyValue = snapshotPolicy;
    if (snapshotPolicyValue != null) {
      map['snapshotPolicy'] = snapshotPolicyValue;
    }
    final storageEfficiencyEnabledValue = storageEfficiencyEnabled;
    if (storageEfficiencyEnabledValue != null) {
      map['storageEfficiencyEnabled'] = storageEfficiencyEnabledValue;
    }
    map['storageVirtualMachineId'] = storageVirtualMachineId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tieringPolicyValue = tieringPolicy;
    if (tieringPolicyValue != null) {
      map['tieringPolicy'] = Input.mapOptionalInputValue<
          OntapVolumeTieringPolicy,
          Map<String, dynamic>>(tieringPolicyValue, (value) => value.toMap());
    }
    final volumeStyleValue = volumeStyle;
    if (volumeStyleValue != null) {
      map['volumeStyle'] = volumeStyleValue;
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory OntapVolumeArgs.fromMap(Map<String, dynamic> map) {
    return OntapVolumeArgs(
      aggregateConfiguration:
          Input.asOptionalInput<OntapVolumeAggregateConfiguration>(
              map['aggregateConfiguration']),
      bypassSnaplockEnterpriseRetention:
          Input.asOptionalInput<bool>(map['bypassSnaplockEnterpriseRetention']),
      copyTagsToBackups: Input.asOptionalInput<bool>(map['copyTagsToBackups']),
      finalBackupTags:
          Input.asOptionalInput<Map<String, String>>(map['finalBackupTags']),
      junctionPath: Input.asOptionalInput<String>(map['junctionPath']),
      name: Input.asOptionalInput<String>(map['name']),
      ontapVolumeType: Input.asOptionalInput<String>(map['ontapVolumeType']),
      region: Input.asOptionalInput<String>(map['region']),
      securityStyle: Input.asOptionalInput<String>(map['securityStyle']),
      sizeInBytes: Input.asOptionalInput<String>(map['sizeInBytes']),
      sizeInMegabytes: Input.asOptionalInput<int>(map['sizeInMegabytes']),
      skipFinalBackup: Input.asOptionalInput<bool>(map['skipFinalBackup']),
      snaplockConfiguration:
          Input.asOptionalInput<OntapVolumeSnaplockConfiguration>(
              map['snaplockConfiguration']),
      snapshotPolicy: Input.asOptionalInput<String>(map['snapshotPolicy']),
      storageEfficiencyEnabled:
          Input.asOptionalInput<bool>(map['storageEfficiencyEnabled']),
      storageVirtualMachineId:
          Input.asInput<String>(map['storageVirtualMachineId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tieringPolicy:
          Input.asOptionalInput<OntapVolumeTieringPolicy>(map['tieringPolicy']),
      volumeStyle: Input.asOptionalInput<String>(map['volumeStyle']),
      volumeType: Input.asOptionalInput<String>(map['volumeType']),
    );
  }
}
