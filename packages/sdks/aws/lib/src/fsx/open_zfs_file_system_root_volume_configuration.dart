// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_file_system_root_volume_configuration_nfs_exports.dart';
import 'open_zfs_file_system_root_volume_configuration_user_and_group_quota.dart';

class OpenZfsFileSystemRootVolumeConfiguration {
  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final pulumi.Input<bool>? copyTagsToSnapshots;
  /// Method used to compress the data on the volume. Valid values are `LZ4`, `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  final pulumi.Input<String>? dataCompressionType;
  /// NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block for details.
  final pulumi.Input<OpenZfsFileSystemRootVolumeConfigurationNfsExports>? nfsExports;
  /// specifies whether the volume is read-only. Default is false.
  final pulumi.Input<bool>? readOnly;
  /// Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  final pulumi.Input<int>? recordSizeKib;
  /// Specify how much storage users or groups can use on the volume. Maximum of 100 items. See `user_and_group_quotas` Block for details.
  final pulumi.Input<List<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>>? userAndGroupQuotas;

  /// Creates a new [OpenZfsFileSystemRootVolumeConfiguration].
  /// [copyTagsToSnapshots] A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  /// [dataCompressionType] Method used to compress the data on the volume. Valid values are `LZ4`, `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  /// [nfsExports] NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block for details.
  /// [readOnly] specifies whether the volume is read-only. Default is false.
  /// [recordSizeKib] Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  /// [userAndGroupQuotas] Specify how much storage users or groups can use on the volume. Maximum of 100 items. See `user_and_group_quotas` Block for details.
  OpenZfsFileSystemRootVolumeConfiguration({
    this.copyTagsToSnapshots,
    this.dataCompressionType,
    this.nfsExports,
    this.readOnly,
    this.recordSizeKib,
    this.userAndGroupQuotas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copyTagsToSnapshots': ?copyTagsToSnapshots,
      'dataCompressionType': ?dataCompressionType,
      'nfsExports': ?pulumi.Input.mapOptionalInputValue<OpenZfsFileSystemRootVolumeConfigurationNfsExports, Map<String, dynamic>>(nfsExports, (value) => value.toMap()),
      'readOnly': ?readOnly,
      'recordSizeKib': ?recordSizeKib,
      'userAndGroupQuotas': ?pulumi.Input.mapOptionalInputValue<List<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>, List<Map<String, dynamic>>>(userAndGroupQuotas, (value) => pulumi.Input.encodeList<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenZfsFileSystemRootVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfiguration(
      copyTagsToSnapshots: map['copyTagsToSnapshots'] == null ? null : ((map['copyTagsToSnapshots'] as bool).input()).input(),
      dataCompressionType: map['dataCompressionType'] == null ? null : ((map['dataCompressionType'] as String).input()).input(),
      nfsExports: map['nfsExports'] == null ? null : ((OpenZfsFileSystemRootVolumeConfigurationNfsExports.fromMap((map['nfsExports']! as Map).cast<String, dynamic>())).input()).input(),
      readOnly: map['readOnly'] == null ? null : ((map['readOnly'] as bool).input()).input(),
      recordSizeKib: map['recordSizeKib'] == null ? null : ((map['recordSizeKib'] as int).input()).input(),
      userAndGroupQuotas: map['userAndGroupQuotas'] == null ? null : ((pulumi.Input.decodeList<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>(map['userAndGroupQuotas']!, (value) => OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

