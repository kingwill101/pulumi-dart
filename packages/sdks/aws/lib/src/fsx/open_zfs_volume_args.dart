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
  const OpenZfsVolumeArgs({
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
      copyTagsToSnapshots: (() { final guardedValue = map['copyTagsToSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataCompressionType: (() { final guardedValue = map['dataCompressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteVolumeOptions: (() { final guardedValue = map['deleteVolumeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsExports: (() { final guardedValue = map['nfsExports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenZfsVolumeNfsExports.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originSnapshot: (() { final guardedValue = map['originSnapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenZfsVolumeOriginSnapshot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parentVolumeId: pulumi.Input.fromValue(map['parentVolumeId'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recordSizeKib: (() { final guardedValue = map['recordSizeKib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageCapacityQuotaGib: (() { final guardedValue = map['storageCapacityQuotaGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageCapacityReservationGib: (() { final guardedValue = map['storageCapacityReservationGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userAndGroupQuotas: (() { final guardedValue = map['userAndGroupQuotas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenZfsVolumeUserAndGroupQuota>(guardedValue, (value) => OpenZfsVolumeUserAndGroupQuota.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

