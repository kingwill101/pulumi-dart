// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../open_zfs_file_system_root_volume_configuration_nfs_exports/open_zfs_file_system_root_volume_configuration_nfs_exports.dart';
import '../open_zfs_file_system_root_volume_configuration_user_and_group_quota/open_zfs_file_system_root_volume_configuration_user_and_group_quota.dart';

class OpenZfsFileSystemRootVolumeConfiguration {
  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final bool? copyTagsToSnapshots;

  /// Method used to compress the data on the volume. Valid values are `LZ4`, `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  final String? dataCompressionType;

  /// NFS export configuration for the root volume. Exactly 1 item. See `nfs_exports` Block for details.
  final OpenZfsFileSystemRootVolumeConfigurationNfsExports? nfsExports;

  /// specifies whether the volume is read-only. Default is false.
  final bool? readOnly;

  /// Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. The default is `128` KiB.
  final int? recordSizeKib;

  /// Specify how much storage users or groups can use on the volume. Maximum of 100 items. See `user_and_group_quotas` Block for details.
  final List<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>?
      userAndGroupQuotas;

  OpenZfsFileSystemRootVolumeConfiguration({
    this.copyTagsToSnapshots,
    this.dataCompressionType,
    this.nfsExports,
    this.readOnly,
    this.recordSizeKib,
    this.userAndGroupQuotas,
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
    final nfsExportsValue = nfsExports;
    if (nfsExportsValue != null) {
      map['nfsExports'] = nfsExportsValue.toMap();
    }
    final readOnlyValue = readOnly;
    if (readOnlyValue != null) {
      map['readOnly'] = readOnlyValue;
    }
    final recordSizeKibValue = recordSizeKib;
    if (recordSizeKibValue != null) {
      map['recordSizeKib'] = recordSizeKibValue;
    }
    final userAndGroupQuotasValue = userAndGroupQuotas;
    if (userAndGroupQuotasValue != null) {
      map['userAndGroupQuotas'] = pulumi.Input.encodeList<
              OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota,
              Map<String, dynamic>>(
          userAndGroupQuotasValue, (value) => value.toMap());
    }
    return map;
  }

  factory OpenZfsFileSystemRootVolumeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfiguration(
      copyTagsToSnapshots: map['copyTagsToSnapshots'] == null
          ? null
          : map['copyTagsToSnapshots'] as bool,
      dataCompressionType: map['dataCompressionType'] == null
          ? null
          : map['dataCompressionType'] as String,
      nfsExports: map['nfsExports'] == null
          ? null
          : OpenZfsFileSystemRootVolumeConfigurationNfsExports.fromMap(
              (map['nfsExports'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      recordSizeKib:
          map['recordSizeKib'] == null ? null : map['recordSizeKib'] as int,
      userAndGroupQuotas: map['userAndGroupQuotas'] == null
          ? null
          : pulumi.Input.decodeList<
                  OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>(
              map['userAndGroupQuotas'],
              (value) =>
                  OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
