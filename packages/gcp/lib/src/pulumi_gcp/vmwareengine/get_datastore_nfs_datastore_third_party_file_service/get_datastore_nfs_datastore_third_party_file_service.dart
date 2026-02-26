// ignore_for_file: unused_element, unnecessary_cast

class GetDatastoreNfsDatastoreThirdPartyFileService {
  /// Required
  /// Mount Folder name
  final String fileShare;

  /// Required to identify vpc peering used for NFS access
  /// network name of NFS's vpc
  /// e.g. projects/project-id/global/networks/my-network_id
  final String network;

  /// Server IP addresses of the NFS file service.
  /// NFS v3, provide a single IP address or DNS name.
  /// Multiple servers can be supported in future when NFS 4.1 protocol support
  /// is enabled.
  final List<String> servers;

  GetDatastoreNfsDatastoreThirdPartyFileService({
    required this.fileShare,
    required this.network,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileShare'] = fileShare;
    map['network'] = network;
    map['servers'] = servers;
    return map;
  }

  factory GetDatastoreNfsDatastoreThirdPartyFileService.fromMap(
      Map<String, dynamic> map) {
    return GetDatastoreNfsDatastoreThirdPartyFileService(
      fileShare: map['fileShare'] as String,
      network: map['network'] as String,
      servers: (map['servers'] as List).cast<String>(),
    );
  }
}
