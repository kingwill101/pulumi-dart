import 'package:pulumi/pulumi.dart';
import '../open_zfs_volume_nfs_exports/open_zfs_volume_nfs_exports.dart';
import '../open_zfs_volume_origin_snapshot/open_zfs_volume_origin_snapshot.dart';
import '../open_zfs_volume_user_and_group_quota/open_zfs_volume_user_and_group_quota.dart';
import 'open_zfs_volume_args.dart';

/// Manages an Amazon FSx for OpenZFS volume.
/// See the [FSx OpenZFS User Guide](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/what-is-fsx.html) for more information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FSx Volumes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:fsx/openZfsVolume:OpenZfsVolume example fsvol-543ab12b1ca672f33
/// ```
class OpenZfsVolume extends CustomResource {
  /// Amazon Resource Name of the file system.
  late final Output<String> arn;

  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  late final Output<bool?> copyTagsToSnapshots;

  /// Method used to compress the data on the volume. Valid values are `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  late final Output<String?> dataCompressionType;

  /// Whether to delete all child volumes and snapshots. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`. This configuration must be applied separately before attempting to delete the resource to have the desired behavior..
  late final Output<String?> deleteVolumeOptions;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  late final Output<String> name;

  /// NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block Below for details.
  late final Output<OpenZfsVolumeNfsExports?> nfsExports;

  /// Specifies the configuration to use when creating the OpenZFS volume. See `origin_snapshot` Block below for details.
  late final Output<OpenZfsVolumeOriginSnapshot?> originSnapshot;

  /// The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the `aws.fsx.OpenZfsFileSystem` resource with the `root_volume_id` or the `id` property of another `aws.fsx.OpenZfsVolume`.
  late final Output<String> parentVolumeId;

  /// specifies whether the volume is read-only. Default is false.
  late final Output<bool> readOnly;

  /// The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  late final Output<int?> recordSizeKib;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The maximum amount of storage in gibibytes (GiB) that the volume can use from its parent.
  late final Output<int> storageCapacityQuotaGib;

  /// The amount of storage in gibibytes (GiB) to reserve from the parent volume.
  late final Output<int> storageCapacityReservationGib;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Specify how much storage users or groups can use on the volume. Maximum number of items defined by [FSx for OpenZFS Resource quota](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html#limits-openzfs-resources-file-system). See `user_and_group_quotas` Block Below.
  late final Output<List<OpenZfsVolumeUserAndGroupQuota>> userAndGroupQuotas;
  late final Output<String?> volumeType;

  OpenZfsVolume(
    String name, {
    OpenZfsVolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fsx/openZfsVolume:OpenZfsVolume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.copyTagsToSnapshots = registerOutput<bool?>('copyTagsToSnapshots');
    this.dataCompressionType = registerOutput<String?>('dataCompressionType');
    this.deleteVolumeOptions = registerOutput<String?>('deleteVolumeOptions');
    this.name = registerOutput<String>('name');
    this.nfsExports = registerOutput<OpenZfsVolumeNfsExports?>('nfsExports');
    this.originSnapshot =
        registerOutput<OpenZfsVolumeOriginSnapshot?>('originSnapshot');
    this.parentVolumeId = registerOutput<String>('parentVolumeId');
    this.readOnly = registerOutput<bool>('readOnly');
    this.recordSizeKib = registerOutput<int?>('recordSizeKib');
    this.region = registerOutput<String>('region');
    this.storageCapacityQuotaGib =
        registerOutput<int>('storageCapacityQuotaGib');
    this.storageCapacityReservationGib =
        registerOutput<int>('storageCapacityReservationGib');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userAndGroupQuotas =
        registerOutput<List<OpenZfsVolumeUserAndGroupQuota>>(
            'userAndGroupQuotas');
    this.volumeType = registerOutput<String?>('volumeType');
  }
}
