// ignore_for_file: unused_element, unnecessary_cast

class GetOntapFileSystemEndpointIntercluster {
  /// DNS name for the file system.
  final String dnsName;
  final List<String> ipAddresses;

  GetOntapFileSystemEndpointIntercluster({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsName'] = dnsName;
    map['ipAddresses'] = ipAddresses;
    return map;
  }

  factory GetOntapFileSystemEndpointIntercluster.fromMap(
      Map<String, dynamic> map) {
    return GetOntapFileSystemEndpointIntercluster(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
