// ignore_for_file: unused_element, unnecessary_cast

class CertificateConfigX509ConfigPolicyId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  CertificateConfigX509ConfigPolicyId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory CertificateConfigX509ConfigPolicyId.fromMap(
      Map<String, dynamic> map) {
    return CertificateConfigX509ConfigPolicyId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
