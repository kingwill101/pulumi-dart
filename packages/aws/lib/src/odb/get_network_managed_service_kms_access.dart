// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagedServiceKmsAccess {
  final String domainName;
  final List<String> ipv4Addresses;
  final String kmsPolicyDocument;
  /// The status of the network resource.
  final String status;

  /// Creates a new [GetNetworkManagedServiceKmsAccess].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [kmsPolicyDocument] Required.
  /// [status] The status of the network resource.
  GetNetworkManagedServiceKmsAccess({
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

  factory GetNetworkManagedServiceKmsAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceKmsAccess(
      domainName: map['domainName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      kmsPolicyDocument: map['kmsPolicyDocument'] as String,
      status: map['status'] as String,
    );
  }
}

