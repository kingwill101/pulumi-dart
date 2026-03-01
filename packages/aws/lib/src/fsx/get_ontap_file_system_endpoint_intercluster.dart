// ignore_for_file: unused_element, unnecessary_cast

class GetOntapFileSystemEndpointIntercluster {
  /// DNS name for the file system.
  final String dnsName;
  final List<String> ipAddresses;

  /// Creates a new [GetOntapFileSystemEndpointIntercluster].
  /// [dnsName] DNS name for the file system.
  /// [ipAddresses] Required.
  GetOntapFileSystemEndpointIntercluster({
    required this.dnsName,
    required this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dnsName': dnsName, 'ipAddresses': ipAddresses};
  }

  factory GetOntapFileSystemEndpointIntercluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapFileSystemEndpointIntercluster(
      dnsName: map['dnsName'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
    );
  }
}
