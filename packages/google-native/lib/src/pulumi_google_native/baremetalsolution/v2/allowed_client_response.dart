// ignore_for_file: unused_element, unnecessary_cast

/// Represents an 'access point' for the share.
class AllowedClientResponse {
  /// Allow dev flag. Which controls whether to allow creation of devices.
  final bool allowDev;

  /// Allow the setuid flag.
  final bool allowSuid;

  /// The subnet of IP addresses permitted to access the share.
  final String allowedClientsCidr;

  /// Mount permissions.
  final String mountPermissions;

  /// The network the access point sits on.
  final String network;

  /// The path to access NFS, in format shareIP:/InstanceID InstanceID is the generated ID instead of customer provided name. example like "10.0.0.0:/g123456789-nfs001"
  final String nfsPath;

  /// Disable root squashing, which is a feature of NFS. Root squash is a special mapping of the remote superuser (root) identity when using identity authentication.
  final bool noRootSquash;

  /// The IP address of the share on this network. Assigned automatically during provisioning based on the network's services_cidr.
  final String shareIp;

  AllowedClientResponse({
    required this.allowDev,
    required this.allowSuid,
    required this.allowedClientsCidr,
    required this.mountPermissions,
    required this.network,
    required this.nfsPath,
    required this.noRootSquash,
    required this.shareIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowDev'] = allowDev;
    map['allowSuid'] = allowSuid;
    map['allowedClientsCidr'] = allowedClientsCidr;
    map['mountPermissions'] = mountPermissions;
    map['network'] = network;
    map['nfsPath'] = nfsPath;
    map['noRootSquash'] = noRootSquash;
    map['shareIp'] = shareIp;
    return map;
  }

  factory AllowedClientResponse.fromMap(Map<String, dynamic> map) {
    return AllowedClientResponse(
      allowDev: map['allowDev'] as bool,
      allowSuid: map['allowSuid'] as bool,
      allowedClientsCidr: map['allowedClientsCidr'] as String,
      mountPermissions: map['mountPermissions'] as String,
      network: map['network'] as String,
      nfsPath: map['nfsPath'] as String,
      noRootSquash: map['noRootSquash'] as bool,
      shareIp: map['shareIp'] as String,
    );
  }
}
