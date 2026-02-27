import 'package:pulumi/pulumi.dart' as pulumi;
import '../ontap_volume_aggregate_configuration/ontap_volume_aggregate_configuration.dart';
import '../ontap_volume_snaplock_configuration/ontap_volume_snaplock_configuration.dart';
import '../ontap_volume_tiering_policy/ontap_volume_tiering_policy.dart';
import 'ontap_volume_args.dart';

/// Manages a FSx ONTAP Volume.
/// See the [FSx ONTAP User Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html) for more information.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Using Tiering Policy
///
/// Additional information on tiering policy with ONTAP Volumes can be found in the [FSx ONTAP Guide](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-volumes.html).
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx ONTAP volume using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/ontapVolume:OntapVolume example fsvol-12345678abcdef123
/// ```
class OntapVolume extends pulumi.CustomResource {
  /// The Aggregate configuration only applies to `FLEXGROUP` volumes. See [`aggregate_configuration` Block] for details.
  late final pulumi.Output<OntapVolumeAggregateConfiguration?>
      aggregateConfiguration;

  /// Amazon Resource Name of the volune.
  late final pulumi.Output<String> arn;

  /// Setting this to `true` allows a SnapLock administrator to delete an FSx for ONTAP SnapLock Enterprise volume with unexpired write once, read many (WORM) files. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> bypassSnaplockEnterpriseRetention;

  /// A boolean flag indicating whether tags for the volume should be copied to backups. This value defaults to `false`.
  late final pulumi.Output<bool?> copyTagsToBackups;

  /// Describes the file system for the volume, e.g. `fs-12345679`
  late final pulumi.Output<String> fileSystemId;

  /// A map of tags to apply to the volume's final backup.
  late final pulumi.Output<Map<String, String>?> finalBackupTags;

  /// Specifies the FlexCache endpoint type of the volume, Valid values are `NONE`, `ORIGIN`, `CACHE`. Default value is `NONE`. These can be set by the ONTAP CLI or API and are use with FlexCache feature.
  late final pulumi.Output<String> flexcacheEndpointType;

  /// Specifies the location in the storage virtual machine's namespace where the volume is mounted. The junction_path must have a leading forward slash, such as `/vol3`
  late final pulumi.Output<String?> junctionPath;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  late final pulumi.Output<String> name;

  /// Specifies the type of volume, valid values are `RW`, `DP`. Default value is `RW`. These can be set by the ONTAP CLI or API. This setting is used as part of migration and replication [Migrating to Amazon FSx for NetApp ONTAP](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/migrating-fsx-ontap.html)
  late final pulumi.Output<String> ontapVolumeType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the volume security style, Valid values are `UNIX`, `NTFS`, and `MIXED`.
  late final pulumi.Output<String> securityStyle;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Can be used for any size but required for volumes over 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  late final pulumi.Output<String> sizeInBytes;

  /// Specifies the size of the volume, in megabytes (MB), that you are creating. Supported when creating volumes under 2 PB. Either size_in_bytes or size_in_megabytes must be specified. Minimum size for `FLEXGROUP` volumes are 100GiB per constituent.
  late final pulumi.Output<int> sizeInMegabytes;

  /// When enabled, will skip the default final backup taken when the volume is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  late final pulumi.Output<bool?> skipFinalBackup;

  /// The SnapLock configuration for an FSx for ONTAP volume. See `snaplock_configuration` Block for details.
  late final pulumi.Output<OntapVolumeSnaplockConfiguration?>
      snaplockConfiguration;

  /// Specifies the snapshot policy for the volume. See [snapshot policies](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/snapshots-ontap.html#snapshot-policies) in the Amazon FSx ONTAP User Guide
  late final pulumi.Output<String> snapshotPolicy;

  /// Set to true to enable deduplication, compression, and compaction storage efficiency features on the volume.
  late final pulumi.Output<bool?> storageEfficiencyEnabled;

  /// Specifies the storage virtual machine in which to create the volume.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> storageVirtualMachineId;

  /// A map of tags to assign to the volume. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The data tiering policy for an FSx for ONTAP volume. See `tiering_policy` Block for details.
  late final pulumi.Output<OntapVolumeTieringPolicy?> tieringPolicy;

  /// The Volume's UUID (universally unique identifier).
  late final pulumi.Output<String> uuid;

  /// Specifies the styles of volume, valid values are `FLEXVOL`, `FLEXGROUP`. Default value is `FLEXVOL`. FLEXGROUPS have a larger minimum and maximum size. See Volume Styles for more details. [Volume Styles](https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/volume-styles.html)
  late final pulumi.Output<String> volumeStyle;

  /// The type of volume, currently the only valid value is `ONTAP`.
  late final pulumi.Output<String?> volumeType;

  OntapVolume(
    String name, {
    OntapVolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fsx/ontapVolume:OntapVolume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aggregateConfiguration =
        registerOutput<OntapVolumeAggregateConfiguration?>(
            'aggregateConfiguration');
    this.arn = registerOutput<String>('arn');
    this.bypassSnaplockEnterpriseRetention =
        registerOutput<bool?>('bypassSnaplockEnterpriseRetention');
    this.copyTagsToBackups = registerOutput<bool?>('copyTagsToBackups');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.finalBackupTags =
        registerOutput<Map<String, String>?>('finalBackupTags');
    this.flexcacheEndpointType =
        registerOutput<String>('flexcacheEndpointType');
    this.junctionPath = registerOutput<String?>('junctionPath');
    this.name = registerOutput<String>('name');
    this.ontapVolumeType = registerOutput<String>('ontapVolumeType');
    this.region = registerOutput<String>('region');
    this.securityStyle = registerOutput<String>('securityStyle');
    this.sizeInBytes = registerOutput<String>('sizeInBytes');
    this.sizeInMegabytes = registerOutput<int>('sizeInMegabytes');
    this.skipFinalBackup = registerOutput<bool?>('skipFinalBackup');
    this.snaplockConfiguration =
        registerOutput<OntapVolumeSnaplockConfiguration?>(
            'snaplockConfiguration');
    this.snapshotPolicy = registerOutput<String>('snapshotPolicy');
    this.storageEfficiencyEnabled =
        registerOutput<bool?>('storageEfficiencyEnabled');
    this.storageVirtualMachineId =
        registerOutput<String>('storageVirtualMachineId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tieringPolicy =
        registerOutput<OntapVolumeTieringPolicy?>('tieringPolicy');
    this.uuid = registerOutput<String>('uuid');
    this.volumeStyle = registerOutput<String>('volumeStyle');
    this.volumeType = registerOutput<String?>('volumeType');
  }
}
