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

  /// Creates a new [NfsExport].
  /// [allowDev] Allow dev flag in NfsShare AllowedClientsRequest.
  /// [allowSuid] Allow the setuid flag.
  /// [cidr] A CIDR range.
  /// [machineId] Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  /// [networkId] Network to use to publish the export.
  /// [noRootSquash] Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  /// [permissions] Export permissions.
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
    return <String, dynamic>{
      'allowDev': ?allowDev,
      'allowSuid': ?allowSuid,
      'cidr': ?cidr,
      'machineId': ?machineId,
      'networkId': ?networkId,
      'noRootSquash': ?noRootSquash,
      'permissions': ?permissions == null ? null : permissions!.value,
    };
  }

  factory NfsExport.fromMap(Map<String, dynamic> map) {
    return NfsExport(
      allowDev: map['allowDev'] == null ? null : map['allowDev'] as bool,
      allowSuid: map['allowSuid'] == null ? null : map['allowSuid'] as bool,
      cidr: map['cidr'] == null ? null : map['cidr'] as String,
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      networkId: map['networkId'] == null ? null : map['networkId'] as String,
      noRootSquash: map['noRootSquash'] == null ? null : map['noRootSquash'] as bool,
      permissions: map['permissions'] == null ? null : NfsExportPermissions.fromValue(map['permissions'] as String),
    );
  }
}

