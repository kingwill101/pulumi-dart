// ignore_for_file: unused_element, unnecessary_cast

class CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return CertificateConfigX509ConfigKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
