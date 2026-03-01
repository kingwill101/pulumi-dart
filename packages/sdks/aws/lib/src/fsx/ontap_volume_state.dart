// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_volume_aggregate_configuration.dart';
import 'ontap_volume_snaplock_configuration.dart';
import 'ontap_volume_tiering_policy.dart';

/// Input properties used for looking up and filtering OntapVolume resources.
class OntapVolumeState {
  /// The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  final pulumi.Input<OntapVolumeAggregateConfiguration>? aggregateConfiguration;
  /// Amazon Resource Name of the volune.
  final pulumi.Input<String>? arn;
  /// Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? bypassSnaplockEnterpriseRetention;
  /// A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  final pulumi.Input<bool>? copyTagsToBackups;
  /// Describes the file system for the volume, e.g. `fs-12345679`
  final pulumi.Input<String>? fileSystemId;
  /// A map of tags to apply to the volume's final backup.
  final pulumi.Input<Map<String, String>>? finalBackupTags;
  /// Specifies the FlexCache endpoint type of the volume, Valid values are `NONE`, `ORIGIN`, `CACHE`. Default value is `NONE`. These can be set by the ONTAP CLI or API and are use with FlexCache feature.
  final pulumi.Input<String>? flexcacheEndpointType;
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
  final pulumi.Input<String>? storageVirtualMachineId;
  /// A map of tags to assign to the volume. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  final pulumi.Input<OntapVolumeTieringPolicy>? tieringPolicy;
  /// The Volume's UUID (universally unique identifier).
  final pulumi.Input<String>? uuid;
  /// Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  final pulumi.Input<String>? volumeStyle;
  /// The type of volume, currently the only valid value is `ONTAP`.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [OntapVolumeState].
  /// [aggregateConfiguration] The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  /// [arn] Amazon Resource Name of the volune.
  /// [bypassSnaplockEnterpriseRetention] Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [copyTagsToBackups] A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  /// [fileSystemId] Describes the file system for the volume, e.g. `fs-12345679`
  /// [finalBackupTags] A map of tags to apply to the volume's final backup.
  /// [flexcacheEndpointType] Specifies the FlexCache endpoint type of the volume, Valid values are `NONE`, `ORIGIN`, `CACHE`. Default value is `NONE`. These can be set by the ONTAP CLI or API and are use with FlexCache feature.
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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tieringPolicy] The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  /// [uuid] The Volume's UUID (universally unique identifier).
  /// [volumeStyle] Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  /// [volumeType] The type of volume, currently the only valid value is `ONTAP`.
  OntapVolumeState({
    pulumi.Output<OntapVolumeAggregateConfiguration>? aggregateConfiguration,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? bypassSnaplockEnterpriseRetention,
    pulumi.Output<bool>? copyTagsToBackups,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<Map<String, String>>? finalBackupTags,
    pulumi.Output<String>? flexcacheEndpointType,
    pulumi.Output<String>? junctionPath,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ontapVolumeType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityStyle,
    pulumi.Output<String>? sizeInBytes,
    pulumi.Output<int>? sizeInMegabytes,
    pulumi.Output<bool>? skipFinalBackup,
    pulumi.Output<OntapVolumeSnaplockConfiguration>? snaplockConfiguration,
    pulumi.Output<String>? snapshotPolicy,
    pulumi.Output<bool>? storageEfficiencyEnabled,
    pulumi.Output<String>? storageVirtualMachineId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<OntapVolumeTieringPolicy>? tieringPolicy,
    pulumi.Output<String>? uuid,
    pulumi.Output<String>? volumeStyle,
    pulumi.Output<String>? volumeType,
  }) :
      aggregateConfiguration = pulumi.Input.asOptionalInput<OntapVolumeAggregateConfiguration>(aggregateConfiguration),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bypassSnaplockEnterpriseRetention = pulumi.Input.asOptionalInput<bool>(bypassSnaplockEnterpriseRetention),
      copyTagsToBackups = pulumi.Input.asOptionalInput<bool>(copyTagsToBackups),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      finalBackupTags = pulumi.Input.asOptionalInput<Map<String, String>>(finalBackupTags),
      flexcacheEndpointType = pulumi.Input.asOptionalInput<String>(flexcacheEndpointType),
      junctionPath = pulumi.Input.asOptionalInput<String>(junctionPath),
      name = pulumi.Input.asOptionalInput<String>(name),
      ontapVolumeType = pulumi.Input.asOptionalInput<String>(ontapVolumeType),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityStyle = pulumi.Input.asOptionalInput<String>(securityStyle),
      sizeInBytes = pulumi.Input.asOptionalInput<String>(sizeInBytes),
      sizeInMegabytes = pulumi.Input.asOptionalInput<int>(sizeInMegabytes),
      skipFinalBackup = pulumi.Input.asOptionalInput<bool>(skipFinalBackup),
      snaplockConfiguration = pulumi.Input.asOptionalInput<OntapVolumeSnaplockConfiguration>(snaplockConfiguration),
      snapshotPolicy = pulumi.Input.asOptionalInput<String>(snapshotPolicy),
      storageEfficiencyEnabled = pulumi.Input.asOptionalInput<bool>(storageEfficiencyEnabled),
      storageVirtualMachineId = pulumi.Input.asOptionalInput<String>(storageVirtualMachineId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tieringPolicy = pulumi.Input.asOptionalInput<OntapVolumeTieringPolicy>(tieringPolicy),
      uuid = pulumi.Input.asOptionalInput<String>(uuid),
      volumeStyle = pulumi.Input.asOptionalInput<String>(volumeStyle),
      volumeType = pulumi.Input.asOptionalInput<String>(volumeType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapVolumeAggregateConfiguration, Map<String, dynamic>>(aggregateConfiguration, (value) => value.toMap()),
      'arn': ?arn,
      'bypassSnaplockEnterpriseRetention': ?bypassSnaplockEnterpriseRetention,
      'copyTagsToBackups': ?copyTagsToBackups,
      'fileSystemId': ?fileSystemId,
      'finalBackupTags': ?finalBackupTags,
      'flexcacheEndpointType': ?flexcacheEndpointType,
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
      'storageVirtualMachineId': ?storageVirtualMachineId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<OntapVolumeTieringPolicy, Map<String, dynamic>>(tieringPolicy, (value) => value.toMap()),
      'uuid': ?uuid,
      'volumeStyle': ?volumeStyle,
      'volumeType': ?volumeType,
    };
  }

  factory OntapVolumeState.fromMap(Map<String, dynamic> map) {
    return OntapVolumeState(
      aggregateConfiguration: map['aggregateConfiguration'] == null ? null : pulumi.Output.create<OntapVolumeAggregateConfiguration>(OntapVolumeAggregateConfiguration.fromMap((map['aggregateConfiguration'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bypassSnaplockEnterpriseRetention: map['bypassSnaplockEnterpriseRetention'] == null ? null : pulumi.Output.create<bool>(map['bypassSnaplockEnterpriseRetention'] as bool),
      copyTagsToBackups: map['copyTagsToBackups'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToBackups'] as bool),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      finalBackupTags: map['finalBackupTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['finalBackupTags'] as Map).cast<String, String>()),
      flexcacheEndpointType: map['flexcacheEndpointType'] == null ? null : pulumi.Output.create<String>(map['flexcacheEndpointType'] as String),
      junctionPath: map['junctionPath'] == null ? null : pulumi.Output.create<String>(map['junctionPath'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ontapVolumeType: map['ontapVolumeType'] == null ? null : pulumi.Output.create<String>(map['ontapVolumeType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityStyle: map['securityStyle'] == null ? null : pulumi.Output.create<String>(map['securityStyle'] as String),
      sizeInBytes: map['sizeInBytes'] == null ? null : pulumi.Output.create<String>(map['sizeInBytes'] as String),
      sizeInMegabytes: map['sizeInMegabytes'] == null ? null : pulumi.Output.create<int>(map['sizeInMegabytes'] as int),
      skipFinalBackup: map['skipFinalBackup'] == null ? null : pulumi.Output.create<bool>(map['skipFinalBackup'] as bool),
      snaplockConfiguration: map['snaplockConfiguration'] == null ? null : pulumi.Output.create<OntapVolumeSnaplockConfiguration>(OntapVolumeSnaplockConfiguration.fromMap((map['snaplockConfiguration'] as Map).cast<String, dynamic>())),
      snapshotPolicy: map['snapshotPolicy'] == null ? null : pulumi.Output.create<String>(map['snapshotPolicy'] as String),
      storageEfficiencyEnabled: map['storageEfficiencyEnabled'] == null ? null : pulumi.Output.create<bool>(map['storageEfficiencyEnabled'] as bool),
      storageVirtualMachineId: map['storageVirtualMachineId'] == null ? null : pulumi.Output.create<String>(map['storageVirtualMachineId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tieringPolicy: map['tieringPolicy'] == null ? null : pulumi.Output.create<OntapVolumeTieringPolicy>(OntapVolumeTieringPolicy.fromMap((map['tieringPolicy'] as Map).cast<String, dynamic>())),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
      volumeStyle: map['volumeStyle'] == null ? null : pulumi.Output.create<String>(map['volumeStyle'] as String),
      volumeType: map['volumeType'] == null ? null : pulumi.Output.create<String>(map['volumeType'] as String),
    );
  }
}

