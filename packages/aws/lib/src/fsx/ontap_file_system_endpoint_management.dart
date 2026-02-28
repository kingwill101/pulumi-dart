// ignore_for_file: unused_element, unnecessary_cast

class OntapFileSystemEndpointManagement {
  /// The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final String? dnsName;

  /// IP addresses of the file system endpoint.
  final List<String>? ipAddresses;

  /// Creates a new [OntapFileSystemEndpointManagement].
  /// [dnsName] The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  /// [ipAddresses] IP addresses of the file system endpoint.
  OntapFileSystemEndpointManagement({
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

  factory OntapFileSystemEndpointManagement.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemEndpointManagement(
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
