// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'nfs_export_options_access_mode2.dart';
import 'nfs_export_options_security_flavors_item.dart';
import 'nfs_export_options_squash_mode2.dart';

/// NFS export options specifications.
class NfsExportOptions2 {
  /// Either READ_ONLY, for allowing only read requests on the exported directory, or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE.
  final NfsExportOptionsAccessMode2? accessMode;

  /// An integer representing the anonymous group id with a default value of 65534. Anon_gid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final String? anonGid;

  /// An integer representing the anonymous user id with a default value of 65534. Anon_uid may only be set with squash_mode of ROOT_SQUASH. An error will be returned if this field is specified for other squash_mode settings.
  final String? anonUid;

  /// List of either an IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the file share. Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned. The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions.
  final List<String>? ipRanges;

  /// The security flavors allowed for mount operations. The default is AUTH_SYS.
  final List<NfsExportOptionsSecurityFlavorsItem>? securityFlavors;

  /// Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH, for not allowing root access. The default is NO_ROOT_SQUASH.
  final NfsExportOptionsSquashMode2? squashMode;

  NfsExportOptions2({
    this.accessMode,
    this.anonGid,
    this.anonUid,
    this.ipRanges,
    this.securityFlavors,
    this.squashMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessModeValue = accessMode;
    if (accessModeValue != null) {
      map['accessMode'] = accessModeValue.value;
    }
    final anonGidValue = anonGid;
    if (anonGidValue != null) {
      map['anonGid'] = anonGidValue;
    }
    final anonUidValue = anonUid;
    if (anonUidValue != null) {
      map['anonUid'] = anonUidValue;
    }
    final ipRangesValue = ipRanges;
    if (ipRangesValue != null) {
      map['ipRanges'] = ipRangesValue;
    }
    final securityFlavorsValue = securityFlavors;
    if (securityFlavorsValue != null) {
      map['securityFlavors'] =
          Input.encodeList<NfsExportOptionsSecurityFlavorsItem, String>(
              securityFlavorsValue, (value) => value.value);
    }
    final squashModeValue = squashMode;
    if (squashModeValue != null) {
      map['squashMode'] = squashModeValue.value;
    }
    return map;
  }

  factory NfsExportOptions2.fromMap(Map<String, dynamic> map) {
    return NfsExportOptions2(
      accessMode: map['accessMode'] == null
          ? null
          : NfsExportOptionsAccessMode2.fromValue(map['accessMode'] as String),
      anonGid: map['anonGid'] == null ? null : map['anonGid'] as String,
      anonUid: map['anonUid'] == null ? null : map['anonUid'] as String,
      ipRanges: map['ipRanges'] == null
          ? null
          : (map['ipRanges'] as List).cast<String>(),
      securityFlavors: map['securityFlavors'] == null
          ? null
          : Input.decodeList<NfsExportOptionsSecurityFlavorsItem>(
              map['securityFlavors'],
              (value) => NfsExportOptionsSecurityFlavorsItem.fromValue(
                  value as String)),
      squashMode: map['squashMode'] == null
          ? null
          : NfsExportOptionsSquashMode2.fromValue(map['squashMode'] as String),
    );
  }
}
