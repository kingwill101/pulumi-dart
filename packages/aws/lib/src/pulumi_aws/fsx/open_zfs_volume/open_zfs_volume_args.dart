// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../open_zfs_volume_nfs_exports/open_zfs_volume_nfs_exports.dart';
import '../open_zfs_volume_origin_snapshot/open_zfs_volume_origin_snapshot.dart';
import '../open_zfs_volume_user_and_group_quota/open_zfs_volume_user_and_group_quota.dart';

/// The set of arguments for OpenZfsVolume.
class OpenZfsVolumeArgs {
  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final Input<bool>? copyTagsToSnapshots;

  /// Method used to compress the data on the volume. Valid values are `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  final Input<String>? dataCompressionType;

  /// Whether to delete all child volumes and snapshots. Valid values: `DELETE_CHILD_VOLUMES_AND_SNAPSHOTS`. This configuration must be applied separately before attempting to delete the resource to have the desired behavior..
  final Input<String>? deleteVolumeOptions;

  /// The name of the Volume. You can use a maximum of 203 alphanumeric characters, plus the underscore (_) special character.
  final Input<String>? name;

  /// NFS export configuration for the root volume. Exactly 1 item. See <span pulumi-lang-nodejs="`nfsExports`" pulumi-lang-dotnet="`NfsExports`" pulumi-lang-go="`nfsExports`" pulumi-lang-python="`nfs_exports`" pulumi-lang-yaml="`nfsExports`" pulumi-lang-java="`nfsExports`">`nfs_exports`</span> Block Below for details.
  final Input<OpenZfsVolumeNfsExports>? nfsExports;

  /// Specifies the configuration to use when creating the OpenZFS volume. See <span pulumi-lang-nodejs="`originSnapshot`" pulumi-lang-dotnet="`OriginSnapshot`" pulumi-lang-go="`originSnapshot`" pulumi-lang-python="`origin_snapshot`" pulumi-lang-yaml="`originSnapshot`" pulumi-lang-java="`originSnapshot`">`origin_snapshot`</span> Block below for details.
  final Input<OpenZfsVolumeOriginSnapshot>? originSnapshot;

  /// The volume id of volume that will be the parent volume for the volume being created, this could be the root volume created from the <span pulumi-lang-nodejs="`aws.fsx.OpenZfsFileSystem`" pulumi-lang-dotnet="`aws.fsx.OpenZfsFileSystem`" pulumi-lang-go="`fsx.OpenZfsFileSystem`" pulumi-lang-python="`fsx.OpenZfsFileSystem`" pulumi-lang-yaml="`aws.fsx.OpenZfsFileSystem`" pulumi-lang-java="`aws.fsx.OpenZfsFileSystem`">`aws.fsx.OpenZfsFileSystem`</span> resource with the <span pulumi-lang-nodejs="`rootVolumeId`" pulumi-lang-dotnet="`RootVolumeId`" pulumi-lang-go="`rootVolumeId`" pulumi-lang-python="`root_volume_id`" pulumi-lang-yaml="`rootVolumeId`" pulumi-lang-java="`rootVolumeId`">`root_volume_id`</span> or the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> property of another <span pulumi-lang-nodejs="`aws.fsx.OpenZfsVolume`" pulumi-lang-dotnet="`aws.fsx.OpenZfsVolume`" pulumi-lang-go="`fsx.OpenZfsVolume`" pulumi-lang-python="`fsx.OpenZfsVolume`" pulumi-lang-yaml="`aws.fsx.OpenZfsVolume`" pulumi-lang-java="`aws.fsx.OpenZfsVolume`">`aws.fsx.OpenZfsVolume`</span>.
  final Input<String> parentVolumeId;

  /// specifies whether the volume is read-only. Default is false.
  final Input<bool>? readOnly;

  /// The record size of an OpenZFS volume, in kibibytes (KiB). Valid values are <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, or <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> KiB. The default is <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span> KiB.
  final Input<int>? recordSizeKib;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The maximum amount of storage in gibibytes (GiB) that the volume can use from its parent.
  final Input<int>? storageCapacityQuotaGib;

  /// The amount of storage in gibibytes (GiB) to reserve from the parent volume.
  final Input<int>? storageCapacityReservationGib;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specify how much storage users or groups can use on the volume. Maximum number of items defined by [FSx for OpenZFS Resource quota](https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/limits.html#limits-openzfs-resources-file-system). See <span pulumi-lang-nodejs="`userAndGroupQuotas`" pulumi-lang-dotnet="`UserAndGroupQuotas`" pulumi-lang-go="`userAndGroupQuotas`" pulumi-lang-python="`user_and_group_quotas`" pulumi-lang-yaml="`userAndGroupQuotas`" pulumi-lang-java="`userAndGroupQuotas`">`user_and_group_quotas`</span> Block Below.
  final Input<List<OpenZfsVolumeUserAndGroupQuota>>? userAndGroupQuotas;
  final Input<String>? volumeType;

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
      map['nfsExports'] = Input.mapOptionalInputValue<OpenZfsVolumeNfsExports,
          Map<String, dynamic>>(nfsExportsValue, (value) => value.toMap());
    }
    final originSnapshotValue = originSnapshot;
    if (originSnapshotValue != null) {
      map['originSnapshot'] = Input.mapOptionalInputValue<
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
      map['userAndGroupQuotas'] = Input.mapOptionalInputValue<
              List<OpenZfsVolumeUserAndGroupQuota>, List<Map<String, dynamic>>>(
          userAndGroupQuotasValue,
          (value) => Input.encodeList<OpenZfsVolumeUserAndGroupQuota,
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
          Input.asOptionalInput<bool>(map['copyTagsToSnapshots']),
      dataCompressionType:
          Input.asOptionalInput<String>(map['dataCompressionType']),
      deleteVolumeOptions:
          Input.asOptionalInput<String>(map['deleteVolumeOptions']),
      name: Input.asOptionalInput<String>(map['name']),
      nfsExports:
          Input.asOptionalInput<OpenZfsVolumeNfsExports>(map['nfsExports']),
      originSnapshot: Input.asOptionalInput<OpenZfsVolumeOriginSnapshot>(
          map['originSnapshot']),
      parentVolumeId: Input.asInput<String>(map['parentVolumeId']),
      readOnly: Input.asOptionalInput<bool>(map['readOnly']),
      recordSizeKib: Input.asOptionalInput<int>(map['recordSizeKib']),
      region: Input.asOptionalInput<String>(map['region']),
      storageCapacityQuotaGib:
          Input.asOptionalInput<int>(map['storageCapacityQuotaGib']),
      storageCapacityReservationGib:
          Input.asOptionalInput<int>(map['storageCapacityReservationGib']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userAndGroupQuotas:
          Input.asOptionalInput<List<OpenZfsVolumeUserAndGroupQuota>>(
              map['userAndGroupQuotas']),
      volumeType: Input.asOptionalInput<String>(map['volumeType']),
    );
  }
}
