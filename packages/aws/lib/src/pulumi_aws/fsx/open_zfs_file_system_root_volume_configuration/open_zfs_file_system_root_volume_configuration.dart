// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../open_zfs_file_system_root_volume_configuration_nfs_exports/open_zfs_file_system_root_volume_configuration_nfs_exports.dart';
import '../open_zfs_file_system_root_volume_configuration_user_and_group_quota/open_zfs_file_system_root_volume_configuration_user_and_group_quota.dart';

class OpenZfsFileSystemRootVolumeConfiguration {
  /// A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false.
  final bool? copyTagsToSnapshots;

  /// Method used to compress the data on the volume. Valid values are `LZ4`, `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  final String? dataCompressionType;

  /// NFS export configuration for the root volume. Exactly 1 item. See <span pulumi-lang-nodejs="`nfsExports`" pulumi-lang-dotnet="`NfsExports`" pulumi-lang-go="`nfsExports`" pulumi-lang-python="`nfs_exports`" pulumi-lang-yaml="`nfsExports`" pulumi-lang-java="`nfsExports`">`nfs_exports`</span> Block for details.
  final OpenZfsFileSystemRootVolumeConfigurationNfsExports? nfsExports;

  /// specifies whether the volume is read-only. Default is false.
  final bool? readOnly;

  /// Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are <span pulumi-lang-nodejs="`4`" pulumi-lang-dotnet="`4`" pulumi-lang-go="`4`" pulumi-lang-python="`4`" pulumi-lang-yaml="`4`" pulumi-lang-java="`4`">`4`</span>, <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span>, <span pulumi-lang-nodejs="`16`" pulumi-lang-dotnet="`16`" pulumi-lang-go="`16`" pulumi-lang-python="`16`" pulumi-lang-yaml="`16`" pulumi-lang-java="`16`">`16`</span>, <span pulumi-lang-nodejs="`32`" pulumi-lang-dotnet="`32`" pulumi-lang-go="`32`" pulumi-lang-python="`32`" pulumi-lang-yaml="`32`" pulumi-lang-java="`32`">`32`</span>, <span pulumi-lang-nodejs="`64`" pulumi-lang-dotnet="`64`" pulumi-lang-go="`64`" pulumi-lang-python="`64`" pulumi-lang-yaml="`64`" pulumi-lang-java="`64`">`64`</span>, <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, or <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> KiB. The default is <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span> KiB.
  final int? recordSizeKib;

  /// Specify how much storage users or groups can use on the volume. Maximum of 100 items. See <span pulumi-lang-nodejs="`userAndGroupQuotas`" pulumi-lang-dotnet="`UserAndGroupQuotas`" pulumi-lang-go="`userAndGroupQuotas`" pulumi-lang-python="`user_and_group_quotas`" pulumi-lang-yaml="`userAndGroupQuotas`" pulumi-lang-java="`userAndGroupQuotas`">`user_and_group_quotas`</span> Block for details.
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
      map['userAndGroupQuotas'] = Input.encodeList<
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
          : Input.decodeList<
                  OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>(
              map['userAndGroupQuotas'],
              (value) =>
                  OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
