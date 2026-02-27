// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../open_zfs_volume_nfs_exports/open_zfs_volume_nfs_exports.dart';
import '../open_zfs_volume_origin_snapshot/open_zfs_volume_origin_snapshot.dart';
import '../open_zfs_volume_user_and_group_quota/open_zfs_volume_user_and_group_quota.dart';

/// The set of arguments for OpenZfsVolume.
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
    final map = <String, dynamic>{};
    final copyTagsToSnapshotsValue = copyTagsToSnapshots;
    if (copyTagsToSnapshotsValue != null) {
      map['copyTagsToSnapshots'] = copyTagsToSnapshotsValue;
    }
    final dataCompressionTypeValue = dataCompressionType;
    if (dataCompressionTypeValue != null) {
      map['dataCompressionType'] = dataCompressionTypeValue;
    }
    final deleteVolumeOptionsValue = deleteVolumeOptions;
    if (deleteVolumeOptionsValue != null) {
      map['deleteVolumeOptions'] = deleteVolumeOptionsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nfsExportsValue = nfsExports;
    if (nfsExportsValue != null) {
      map['nfsExports'] = pulumi.Input.mapOptionalInputValue<
          OpenZfsVolumeNfsExports,
          Map<String, dynamic>>(nfsExportsValue, (value) => value.toMap());
    }
    final originSnapshotValue = originSnapshot;
    if (originSnapshotValue != null) {
      map['originSnapshot'] = pulumi.Input.mapOptionalInputValue<
          OpenZfsVolumeOriginSnapshot,
          Map<String, dynamic>>(originSnapshotValue, (value) => value.toMap());
    }
    map['parentVolumeId'] = parentVolumeId;
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final recordSizeKibValue = recordSizeKib;
    if (recordSizeKibValue != null) {
      map['recordSizeKib'] = recordSizeKibValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageCapacityQuotaGibValue = storageCapacityQuotaGib;
    if (storageCapacityQuotaGibValue != null) {
      map['storageCapacityQuotaGib'] = storageCapacityQuotaGibValue;
    }
    final storageCapacityReservationGibValue = storageCapacityReservationGib;
    if (storageCapacityReservationGibValue != null) {
      map['storageCapacityReservationGib'] = storageCapacityReservationGibValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userAndGroupQuotasValue = userAndGroupQuotas;
    if (userAndGroupQuotasValue != null) {
      map['userAndGroupQuotas'] = pulumi.Input.mapOptionalInputValue<
              List<OpenZfsVolumeUserAndGroupQuota>, List<Map<String, dynamic>>>(
          userAndGroupQuotasValue,
          (value) => pulumi.Input.encodeList<OpenZfsVolumeUserAndGroupQuota,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final volumeTypeValue = volumeType;
    if (volumeTypeValue != null) {
      map['volumeType'] = volumeTypeValue;
    }
    return map;
  }

  factory OpenZfsVolumeArgs.fromMap(Map<String, dynamic> map) {
    return OpenZfsVolumeArgs(
      copyTagsToSnapshots:
          pulumi.Input.asOptionalInput<bool>(map['copyTagsToSnapshots']),
      dataCompressionType:
          pulumi.Input.asOptionalInput<String>(map['dataCompressionType']),
      deleteVolumeOptions:
          pulumi.Input.asOptionalInput<String>(map['deleteVolumeOptions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nfsExports: pulumi.Input.asOptionalInput<OpenZfsVolumeNfsExports>(
          map['nfsExports']),
      originSnapshot: pulumi.Input.asOptionalInput<OpenZfsVolumeOriginSnapshot>(
          map['originSnapshot']),
      parentVolumeId: pulumi.Input.asInput<String>(map['parentVolumeId']),
      readOnly: pulumi.Input.asOptionalInput<bool>(map['readOnly']),
      recordSizeKib: pulumi.Input.asOptionalInput<int>(map['recordSizeKib']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      storageCapacityQuotaGib:
          pulumi.Input.asOptionalInput<int>(map['storageCapacityQuotaGib']),
      storageCapacityReservationGib: pulumi.Input.asOptionalInput<int>(
          map['storageCapacityReservationGib']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userAndGroupQuotas:
          pulumi.Input.asOptionalInput<List<OpenZfsVolumeUserAndGroupQuota>>(
              map['userAndGroupQuotas']),
      volumeType: pulumi.Input.asOptionalInput<String>(map['volumeType']),
    );
  }
}
