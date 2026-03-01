// ignore_for_file: unused_element, unnecessary_cast

class NetworkManagedServiceKmsAccess {
  final String domainName;
  final List<String> ipv4Addresses;

  /// Specifies the endpoint policy for KMS access from the ODB network.
  final String kmsPolicyDocument;

  /// The status of the network resource.
  final String status;

  /// Creates a new [NetworkManagedServiceKmsAccess].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [kmsPolicyDocument] Specifies the endpoint policy for KMS access from the ODB network.
  /// [status] The status of the network resource.
  NetworkManagedServiceKmsAccess({
    required this.domainName,
    required this.ipv4Addresses,
    required this.kmsPolicyDocument,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ipv4Addresses': ipv4Addresses,
      'kmsPolicyDocument': kmsPolicyDocument,
      'status': status,
    };
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
