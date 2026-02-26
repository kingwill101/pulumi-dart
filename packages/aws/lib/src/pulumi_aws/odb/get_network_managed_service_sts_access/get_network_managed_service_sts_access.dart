// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkManagedServiceStsAccess {
  final String domainName;
  final List<String> ipv4Addresses;

  /// The status of the network resource.
  final String status;
  final String stsPolicyDocument;

  GetNetworkManagedServiceStsAccess({
    required this.domainName,
    required this.ipv4Addresses,
    required this.status,
    required this.stsPolicyDocument,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ipv4Addresses'] = ipv4Addresses;
    map['status'] = status;
    map['stsPolicyDocument'] = stsPolicyDocument;
    return map;
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
