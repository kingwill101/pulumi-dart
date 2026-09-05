// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_file_system_root_volume_configuration_nfs_exports.dart';
import 'open_zfs_file_system_root_volume_configuration_user_and_group_quota.dart';

class OpenZfsFileSystemRootVolumeConfiguration {
  /// Whether tags for the file system should be copied to snapshots. Default value is false.
  final pulumi.Input<bool?>? copyTagsToSnapshots;
  /// Method used to compress the data on the volume. Valid values are `LZ4`, `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  final pulumi.Input<String?>? dataCompressionType;
  /// NFS export configuration for the root volume. Exactly 1 item. See `nfsExports` Block for details.
  final pulumi.Input<OpenZfsFileSystemRootVolumeConfigurationNfsExports?>? nfsExports;
  /// specifies whether the volume is read-only. Default is false.
  final pulumi.Input<bool?>? readOnly;
  /// Record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. Default is `128` KiB.
  final pulumi.Input<int?>? recordSizeKib;
  /// Specify how much storage users or groups can use on the volume. Maximum of 100 items. See `userAndGroupQuotas` Block for details.
  final pulumi.Input<List<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>?>? userAndGroupQuotas;

  /// Creates a new [OpenZfsFileSystemRootVolumeConfiguration].
  /// [copyTagsToSnapshots] Whether tags for the file system should be copied to snapshots. Default value is false.
  /// [dataCompressionType] Method used to compress the data on the volume. Valid values are `LZ4`, `NONE` or `ZSTD`. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume.
  /// [nfsExports] NFS export configuration for the root volume. Exactly 1 item. See `nfsExports` Block for details.
  /// [readOnly] specifies whether the volume is read-only. Default is false.
  /// [recordSizeKib] Record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are `4`, `8`, `16`, `32`, `64`, `128`, `256`, `512`, or `1024` KiB. Default is `128` KiB.
  /// [userAndGroupQuotas] Specify how much storage users or groups can use on the volume. Maximum of 100 items. See `userAndGroupQuotas` Block for details.
  const OpenZfsFileSystemRootVolumeConfiguration({
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
      copyTagsToSnapshots: (() { final guardedValue = map['copyTagsToSnapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dataCompressionType: (() { final guardedValue = map['dataCompressionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsExports: (() { final guardedValue = map['nfsExports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenZfsFileSystemRootVolumeConfigurationNfsExports.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recordSizeKib: (() { final guardedValue = map['recordSizeKib']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      userAndGroupQuotas: (() { final guardedValue = map['userAndGroupQuotas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota>(guardedValue, (value) => OpenZfsFileSystemRootVolumeConfigurationUserAndGroupQuota.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
