// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_volume_nfs_exports.dart';
import 'open_zfs_volume_origin_snapshot.dart';
import 'open_zfs_volume_user_and_group_quota.dart';

/// {@template pulumi_fsx_open_zfs_volume_open_zfs_volume_args_doc}
/// The set of arguments for OpenZfsVolume.
/// {@endtemplate}
/// {@macro pulumi_fsx_open_zfs_volume_open_zfs_volume_args_doc}
class OpenZfsVolumeArgs {
  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final pulumi.Input<bool>? copyTagsToSnapshots;
  /// Method used to compress the data on the volume. Valid values are `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  final pulumi.Input<String>? dataCompressionType;
  /// Whether to delete all child volumes and snapshots. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`. This configuration must be applied separately before attempting to delete the resource to have the desired behavior..
  final pulumi.Input<String>? deleteVolumeOptions;
  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  final pulumi.Input<String>? name;
  /// NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block Below for details.
  final pulumi.Input<OpenZfsVolumeNfsExports>? nfsExports;
  /// Specifies the configuration to use when creating the OpenZFS volume. See `origin_snapshot` Block below for details.
  final pulumi.Input<OpenZfsVolumeOriginSnapshot>? originSnapshot;
  /// The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the `aws.fsx.OpenZfsFileSystem` resource with the `root_volume_id` or the `id` property of another `aws.fsx.OpenZfsVolume`.
  final pulumi.Input<String> parentVolumeId;
  /// specifies whether the volume is read-only. Default is false.
  final pulumi.Input<bool>? readOnly;
  /// The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  final pulumi.Input<int>? recordSizeKib;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The maximum amount of storage in gibibytes (GiB) that the volume can use from its parent.
  final pulumi.Input<int>? storageCapacityQuotaGib;
  /// The amount of storage in gibibytes (GiB) to reserve from the parent volume.
  final pulumi.Input<int>? storageCapacityReservationGib;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specify how much storage users or groups can use on the volume. Maximum number of items defined by [FSx for OpenZFS Resource quota](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html#limits-openzfs-resources-file-system). See `user_and_group_quotas` Block Below.
  final pulumi.Input<List<OpenZfsVolumeUserAndGroupQuota>>? userAndGroupQuotas;
  final pulumi.Input<String>? volumeType;

  /// Creates a new [OpenZfsVolumeArgs].
  /// [copyTagsToSnapshots] A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  /// [dataCompressionType] Method used to compress the data on the volume. Valid values are `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  /// [deleteVolumeOptions] Whether to delete all child volumes and snapshots. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`. This configuration must be applied separately before attempting to delete the resource to have the desired behavior..
  /// [name] The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  /// [nfsExports] NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block Below for details.
  /// [originSnapshot] Specifies the configuration to use when creating the OpenZFS volume. See `origin_snapshot` Block below for details.
  /// [parentVolumeId] The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the `aws.fsx.OpenZfsFileSystem` resource with the `root_volume_id` or the `id` property of another `aws.fsx.OpenZfsVolume`.
  /// [readOnly] specifies whether the volume is read-only. Default is false.
  /// [recordSizeKib] The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageCapacityQuotaGib] The maximum amount of storage in gibibytes (GiB) that the volume can use from its parent.
  /// [storageCapacityReservationGib] The amount of storage in gibibytes (GiB) to reserve from the parent volume.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userAndGroupQuotas] Specify how much storage users or groups can use on the volume. Maximum number of items defined by [FSx for OpenZFS Resource quota](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html#limits-openzfs-resources-file-system). See `user_and_group_quotas` Block Below.
  /// [volumeType] Optional.
  OpenZfsVolumeArgs({
    this.copyTagsToSnapshots,
    this.dataCompressionType,
    this.deleteVolumeOptions,
    this.name,
    this.nfsExports,
    this.originSnapshot,
    required this.parentVolumeId,
    this.readOnly,
    this.recordSizeKib,
    this.region,
    this.storageCapacityQuotaGib,
    this.storageCapacityReservationGib,
    this.tags,
    this.userAndGroupQuotas,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyTagsToSnapshots': ?copyTagsToSnapshots,
      'dataCompressionType': ?dataCompressionType,
      'deleteVolumeOptions': ?deleteVolumeOptions,
      'name': ?name,
      'nfsExports': ?pulumi.Input.mapOptionalInputValue<OpenZfsVolumeNfsExports, Map<String, dynamic>>(nfsExports, (value) => value.toMap()),
      'originSnapshot': ?pulumi.Input.mapOptionalInputValue<OpenZfsVolumeOriginSnapshot, Map<String, dynamic>>(originSnapshot, (value) => value.toMap()),
      'parentVolumeId': parentVolumeId,
      'readOnly': ?readOnly,
      'recordSizeKib': ?recordSizeKib,
      'region': ?region,
      'storageCapacityQuotaGib': ?storageCapacityQuotaGib,
      'storageCapacityReservationGib': ?storageCapacityReservationGib,
      'tags': ?tags,
      'userAndGroupQuotas': ?pulumi.Input.mapOptionalInputValue<List<OpenZfsVolumeUserAndGroupQuota>, List<Map<String, dynamic>>>(userAndGroupQuotas, (value) => pulumi.Input.encodeList<OpenZfsVolumeUserAndGroupQuota, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeType': ?volumeType,
    };
  }

  factory OpenZfsVolumeArgs.fromMap(Map<String, dynamic> map) {
    return OpenZfsVolumeArgs(
      copyTagsToSnapshots: map['copyTagsToSnapshots'] == null ? null : (map['copyTagsToSnapshots'] as bool).input(),
      dataCompressionType: map['dataCompressionType'] == null ? null : (map['dataCompressionType'] as String).input(),
      deleteVolumeOptions: map['deleteVolumeOptions'] == null ? null : (map['deleteVolumeOptions'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nfsExports: map['nfsExports'] == null ? null : (OpenZfsVolumeNfsExports.fromMap((map['nfsExports'] as Map).cast<String, dynamic>())).input(),
      originSnapshot: map['originSnapshot'] == null ? null : (OpenZfsVolumeOriginSnapshot.fromMap((map['originSnapshot'] as Map).cast<String, dynamic>())).input(),
      parentVolumeId: (map['parentVolumeId'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      recordSizeKib: map['recordSizeKib'] == null ? null : (map['recordSizeKib'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      storageCapacityQuotaGib: map['storageCapacityQuotaGib'] == null ? null : (map['storageCapacityQuotaGib'] as int).input(),
      storageCapacityReservationGib: map['storageCapacityReservationGib'] == null ? null : (map['storageCapacityReservationGib'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userAndGroupQuotas: map['userAndGroupQuotas'] == null ? null : (pulumi.Input.decodeList<OpenZfsVolumeUserAndGroupQuota>(map['userAndGroupQuotas'], (value) => OpenZfsVolumeUserAndGroupQuota.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType'] as String).input(),
    );
  }
}

