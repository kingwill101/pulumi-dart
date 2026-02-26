// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkManagedServiceS3Access {
  final String domainName;
  final List<String> ipv4Addresses;
  final String s3PolicyDocument;

  /// The status of the network resource.
  final String status;

  GetNetworkManagedServiceS3Access({
    required this.domainName,
    required this.ipv4Addresses,
    required this.s3PolicyDocument,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ipv4Addresses'] = ipv4Addresses;
    map['s3PolicyDocument'] = s3PolicyDocument;
    map['status'] = status;
    return map;
  }

  factory GetNetworkManagedServiceS3Access.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagedServiceS3Access(
      domainName: map['domainName'] as String,
      ipv4Addresses: (map['ipv4Addresses'] as List).cast<String>(),
      s3PolicyDocument: map['s3PolicyDocument'] as String,
      status: map['status'] as String,
    );
  }
}
