// ignore_for_file: unused_element, unnecessary_cast


class DatastoreNfsDatastoreThirdPartyFileService {
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

  /// Creates a new [DatastoreNfsDatastoreThirdPartyFileService].
  /// [fileShare] Required
  /// [network] Required to identify vpc peering used for NFS access
  /// [servers] Server IP addresses of the NFS file service.
  DatastoreNfsDatastoreThirdPartyFileService({
    required this.fileShare,
    required this.network,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileShare': fileShare,
      'network': network,
      'servers': servers,
    };
  }

  factory DatastoreNfsDatastoreThirdPartyFileService.fromMap(Map<String, dynamic> map) {
    return DatastoreNfsDatastoreThirdPartyFileService(
      fileShare: map['fileShare'] as String,
      network: map['network'] as String,
      servers: (map['servers'] as List).cast<String>(),
    );
  }
}

