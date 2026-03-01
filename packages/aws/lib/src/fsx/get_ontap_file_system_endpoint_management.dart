// ignore_for_file: unused_element, unnecessary_cast

class GetOntapFileSystemEndpointManagement {
  /// DNS name for the file system.
  final String dnsName;
  final List<String> ipAddresses;

  /// Creates a new [GetOntapFileSystemEndpointManagement].
  /// [dnsName] DNS name for the file system.
  /// [ipAddresses] Required.
  GetOntapFileSystemEndpointManagement({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': dnsName, 'ipAddresses': ipAddresses};
  }

  factory GetOntapFileSystemEndpointManagement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapFileSystemEndpointManagement(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
