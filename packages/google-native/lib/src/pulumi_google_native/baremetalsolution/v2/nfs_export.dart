// ignore_for_file: unused_element, unnecessary_cast

import 'nfs_export_permissions.dart';

/// A NFS export entry.
class NfsExport {
  /// Allow dev flag in NfsShare AllowedClientsRequest.
  final bool? allowDev;

  /// Allow the setuid flag.
  final bool? allowSuid;

  /// A CIDR range.
  final String? cidr;

  /// Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  final String? machineId;

  /// Network to use to publish the export.
  final String? networkId;

  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final bool? noRootSquash;

  /// Export permissions.
  final NfsExportPermissions? permissions;

  NfsExport({
    this.allowDev,
    this.allowSuid,
    this.cidr,
    this.machineId,
    this.networkId,
    this.noRootSquash,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowDevValue = allowDev;
    if (allowDevValue != null) {
      map['allowDev'] = allowDevValue;
    }
    final allowSuidValue = allowSuid;
    if (allowSuidValue != null) {
      map['allowSuid'] = allowSuidValue;
    }
    final cidrValue = cidr;
    if (cidrValue != null) {
      map['cidr'] = cidrValue;
    }
    final machineIdValue = machineId;
    if (machineIdValue != null) {
      map['machineId'] = machineIdValue;
    }
    final networkIdValue = networkId;
    if (networkIdValue != null) {
      map['networkId'] = networkIdValue;
    }
    final noRootSquashValue = noRootSquash;
    if (noRootSquashValue != null) {
      map['noRootSquash'] = noRootSquashValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue.value;
    }
    return map;
  }

  factory NfsExport.fromMap(Map<String, dynamic> map) {
    return NfsExport(
      allowDev: map['allowDev'] == null ? null : map['allowDev'] as bool,
      allowSuid: map['allowSuid'] == null ? null : map['allowSuid'] as bool,
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      noRootSquash:
          map['noRootSquash'] == null ? null : map['noRootSquash'] as bool,
      permissions: map['permissions'] == null
          ? null
          : NfsExportPermissions.fromValue(map['permissions'] as String),
    );
  }
}
