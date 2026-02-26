// ignore_for_file: unused_element, unnecessary_cast

class FileCacheDataRepositoryAssociationNf {
  /// A list of up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name. The provided IP addresses can either be the IP addresses of a DNS forwarder or resolver that the customer manages and runs inside the customer VPC, or the IP addresses of the on-premises DNS servers.
  final List<String>? dnsIps;

  /// The version of the NFS (Network File System) protocol of the NFS data repository. The only supported value is NFS3, which indicates that the data repository must support the NFSv3 protocol. The only supported value is `NFS3`.
  final String version;

  FileCacheDataRepositoryAssociationNf({
    this.dnsIps,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsIpsValue = dnsIps;
    if (dnsIpsValue != null) {
      map['dnsIps'] = dnsIpsValue;
    }
    map['version'] = version;
    return map;
  }

  factory FileCacheDataRepositoryAssociationNf.fromMap(
      Map<String, dynamic> map) {
    return FileCacheDataRepositoryAssociationNf(
      dnsIps:
          map['dnsIps'] == null ? null : (map['dnsIps'] as List).cast<String>(),
      version: map['version'] as String,
    );
  }
}
