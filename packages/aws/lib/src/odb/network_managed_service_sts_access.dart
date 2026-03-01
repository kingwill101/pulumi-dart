// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagedServiceStsAccess {
  final String domainName;
  final List<String> ipv4Addresses;
  /// The status of the network resource.
  final String status;
  /// Specifies the endpoint policy for STS access from the ODB network.
  final String stsPolicyDocument;

  /// Creates a new [NetworkManagedServiceStsAccess].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [status] The status of the network resource.
  /// [stsPolicyDocument] Specifies the endpoint policy for STS access from the ODB network.
  NetworkManagedServiceStsAccess({
    required this.domainName,
    required this.ipv4Addresses,
    required this.status,
    required this.stsPolicyDocument,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipv4Addresses': ipv4Addresses,
      'status': status,
      'stsPolicyDocument': stsPolicyDocument,
    };
  }

  factory NetworkManagedServiceStsAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceStsAccess(
      domainName: map['domainName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      status: map['status'] as String,
      stsPolicyDocument: map['stsPolicyDocument'] as String,
    );
  }
}

