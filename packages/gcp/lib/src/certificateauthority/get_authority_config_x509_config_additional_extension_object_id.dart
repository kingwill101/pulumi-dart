// ignore_for_file: unused_element, unnecessary_cast


class GetAuthorityConfigX509ConfigAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  /// Creates a new [GetAuthorityConfigX509ConfigAdditionalExtensionObjectId].
  /// [objectIdPaths] An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  GetAuthorityConfigX509ConfigAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectIdPaths': objectIdPaths,
    };
  }

  factory GetAuthorityConfigX509ConfigAdditionalExtensionObjectId.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigAdditionalExtensionObjectId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}

