// ignore_for_file: unused_element, unnecessary_cast

class OntapFileSystemEndpointIntercluster {
  /// The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final String? dnsName;

  /// IP addresses of the file system endpoint.
  final List<String>? ipAddresses;

  OntapFileSystemEndpointIntercluster({
    this.dnsName,
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsNameValue = dnsName;
    if (dnsNameValue != null) {
      map['dnsName'] = dnsNameValue;
    }
    final ipAddressesValue = ipAddresses;
    if (ipAddressesValue != null) {
      map['ipAddresses'] = ipAddressesValue;
    }
    return map;
  }

  factory OntapFileSystemEndpointIntercluster.fromMap(
      Map<String, dynamic> map) {
    return OntapFileSystemEndpointIntercluster(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
