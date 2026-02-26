// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  final String keyId;

  GetAuthorityConfigSubjectKeyId({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    return map;
  }

  factory GetAuthorityConfigSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectKeyId(
      keyId: map['keyId'] as String,
    );
  }
}
