// ignore_for_file: unused_element, unnecessary_cast

/// A NFS export entry.
class NfsExportResponse {
  /// Allow dev flag in NfsShare AllowedClientsRequest.
  final bool allowDev;

  /// Allow the setuid flag.
  final bool allowSuid;

  /// A CIDR range.
  final String cidr;

  /// Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  final String machineId;

  /// Network to use to publish the export.
  final String networkId;

  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final bool noRootSquash;

  /// Export permissions.
  final String permissions;

  /// Creates a new [NfsExportResponse].
  /// [allowDev] Allow dev flag in NfsShare AllowedClientsRequest.
  /// [allowSuid] Allow the setuid flag.
  /// [cidr] A CIDR range.
  /// [machineId] Either a single machine, identified by an ID, or a comma-separated list of machine IDs.
  /// [networkId] Network to use to publish the export.
  /// [noRootSquash] Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  /// [permissions] Export permissions.
  NfsExportResponse({
    required this.allowDev,
    required this.allowSuid,
    required this.cidr,
    required this.machineId,
    required this.networkId,
    required this.noRootSquash,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowDev'] = allowDev;
    map['allowSuid'] = allowSuid;
    map['cidr'] = cidr;
    map['machineId'] = machineId;
    map['networkId'] = networkId;
    map['noRootSquash'] = noRootSquash;
    map['permissions'] = permissions;
    return map;
  }

  factory NfsExportResponse.fromMap(Map<String, dynamic> map) {
    return NfsExportResponse(
      allowDev: map['allowDev'] as bool,
      allowSuid: map['allowSuid'] as bool,
      cidr: map['cidr'] as String,
      machineId: map['machineId'] as String,
      networkId: map['networkId'] as String,
      noRootSquash: map['noRootSquash'] as bool,
      permissions: map['permissions'] as String,
    );
  }
}
