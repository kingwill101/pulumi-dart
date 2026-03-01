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
    pulumi.Output<bool>? copyTagsToSnapshots,
    pulumi.Output<String>? dataCompressionType,
    pulumi.Output<String>? deleteVolumeOptions,
    pulumi.Output<String>? name,
    pulumi.Output<OpenZfsVolumeNfsExports>? nfsExports,
    pulumi.Output<OpenZfsVolumeOriginSnapshot>? originSnapshot,
    required pulumi.Output<String> parentVolumeId,
    pulumi.Output<bool>? readOnly,
    pulumi.Output<int>? recordSizeKib,
    pulumi.Output<String>? region,
    pulumi.Output<int>? storageCapacityQuotaGib,
    pulumi.Output<int>? storageCapacityReservationGib,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<OpenZfsVolumeUserAndGroupQuota>>? userAndGroupQuotas,
    pulumi.Output<String>? volumeType,
  }) :
      copyTagsToSnapshots = pulumi.Input.asOptionalInput<bool>(copyTagsToSnapshots),
      dataCompressionType = pulumi.Input.asOptionalInput<String>(dataCompressionType),
      deleteVolumeOptions = pulumi.Input.asOptionalInput<String>(deleteVolumeOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      nfsExports = pulumi.Input.asOptionalInput<OpenZfsVolumeNfsExports>(nfsExports),
      originSnapshot = pulumi.Input.asOptionalInput<OpenZfsVolumeOriginSnapshot>(originSnapshot),
      parentVolumeId = pulumi.Input.asInput<String>(parentVolumeId),
      readOnly = pulumi.Input.asOptionalInput<bool>(readOnly),
      recordSizeKib = pulumi.Input.asOptionalInput<int>(recordSizeKib),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageCapacityQuotaGib = pulumi.Input.asOptionalInput<int>(storageCapacityQuotaGib),
      storageCapacityReservationGib = pulumi.Input.asOptionalInput<int>(storageCapacityReservationGib),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userAndGroupQuotas = pulumi.Input.asOptionalInput<List<OpenZfsVolumeUserAndGroupQuota>>(userAndGroupQuotas),
      volumeType = pulumi.Input.asOptionalInput<String>(volumeType);

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
      copyTagsToSnapshots: map['copyTagsToSnapshots'] == null ? null : pulumi.Output.create<bool>(map['copyTagsToSnapshots'] as bool),
      dataCompressionType: map['dataCompressionType'] == null ? null : pulumi.Output.create<String>(map['dataCompressionType'] as String),
      deleteVolumeOptions: map['deleteVolumeOptions'] == null ? null : pulumi.Output.create<String>(map['deleteVolumeOptions'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nfsExports: map['nfsExports'] == null ? null : pulumi.Output.create<OpenZfsVolumeNfsExports>(OpenZfsVolumeNfsExports.fromMap((map['nfsExports'] as Map).cast<String, dynamic>())),
      originSnapshot: map['originSnapshot'] == null ? null : pulumi.Output.create<OpenZfsVolumeOriginSnapshot>(OpenZfsVolumeOriginSnapshot.fromMap((map['originSnapshot'] as Map).cast<String, dynamic>())),
      parentVolumeId: pulumi.Output.create<String>(map['parentVolumeId'] as String),
      readOnly: map['readOnly'] == null ? null : pulumi.Output.create<bool>(map['readOnly'] as bool),
      recordSizeKib: map['recordSizeKib'] == null ? null : pulumi.Output.create<int>(map['recordSizeKib'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageCapacityQuotaGib: map['storageCapacityQuotaGib'] == null ? null : pulumi.Output.create<int>(map['storageCapacityQuotaGib'] as int),
      storageCapacityReservationGib: map['storageCapacityReservationGib'] == null ? null : pulumi.Output.create<int>(map['storageCapacityReservationGib'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userAndGroupQuotas: map['userAndGroupQuotas'] == null ? null : pulumi.Output.create<List<OpenZfsVolumeUserAndGroupQuota>>(pulumi.Input.decodeList<OpenZfsVolumeUserAndGroupQuota>(map['userAndGroupQuotas'], (value) => OpenZfsVolumeUserAndGroupQuota.fromMap((value as Map).cast<String, dynamic>()))),
      volumeType: map['volumeType'] == null ? null : pulumi.Output.create<String>(map['volumeType'] as String),
    );
  }
}

