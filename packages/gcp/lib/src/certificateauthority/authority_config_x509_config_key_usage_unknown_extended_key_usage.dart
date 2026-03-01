// ignore_for_file: unused_element, unnecessary_cast


class AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  /// Creates a new [AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}

