// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
