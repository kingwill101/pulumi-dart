// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagedServiceStsAccess {
  final String domainName;
  final List<String> ipv4Addresses;
  /// The status of the network resource.
  final String status;
  final String stsPolicyDocument;

  /// Creates a new [GetNetworkManagedServiceStsAccess].
  /// [domainName] Required.
  /// [ipv4Addresses] Required.
  /// [status] The status of the network resource.
  /// [stsPolicyDocument] Required.
  GetNetworkManagedServiceStsAccess({
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

  factory GetNetworkManagedServiceStsAccess.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceStsAccess(
      domainName: map['domainName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      status: map['status'] as String,
      stsPolicyDocument: map['stsPolicyDocument'] as String,
    );
  }
}

