// ignore_for_file: unused_element, unnecessary_cast

class NetworkManagedServiceKmsAccess {
  final String domainName;
  final List<String> ipv4Addresses;

  /// Specifies the endpoint policy for KMS access from the ODB network.
  final String kmsPolicyDocument;

  /// The status of the network resource.
  final String status;

  NetworkManagedServiceKmsAccess({
    required this.domainName,
    required this.ipv4Addresses,
    required this.kmsPolicyDocument,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ipv4Addresses'] = ipv4Addresses;
    map['kmsPolicyDocument'] = kmsPolicyDocument;
    map['status'] = status;
    return map;
  }

  factory NetworkManagedServiceKmsAccess.fromMap(Map<String, dynamic> map) {
    return NetworkManagedServiceKmsAccess(
      domainName: map['domainName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      kmsPolicyDocument: map['kmsPolicyDocument'] as String,
      status: map['status'] as String,
    );
  }
}
