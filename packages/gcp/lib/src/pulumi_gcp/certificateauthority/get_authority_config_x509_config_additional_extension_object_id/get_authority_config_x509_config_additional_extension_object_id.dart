// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigX509ConfigAdditionalExtensionObjectId {
  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<int> objectIdPaths;

  GetAuthorityConfigX509ConfigAdditionalExtensionObjectId({
    required this.objectIdPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectIdPaths'] = objectIdPaths;
    return map;
  }

  factory GetAuthorityConfigX509ConfigAdditionalExtensionObjectId.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigAdditionalExtensionObjectId(
      objectIdPaths: (map['objectIdPaths'] as List).cast<int>(),
    );
  }
}
