// ignore_for_file: unused_element, unnecessary_cast

class GetDomainEncryptionAtRest {
  /// Whether node to node encryption is enabled.
  final bool enabled;

  /// The KMS key id used to encrypt data at rest.
  final String kmsKeyId;

  GetDomainEncryptionAtRest({
    required this.enabled,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['kmsKeyId'] = kmsKeyId;
    return map;
  }

  factory GetDomainEncryptionAtRest.fromMap(Map<String, dynamic> map) {
    return GetDomainEncryptionAtRest(
      enabled: map['enabled'] as bool,
      kmsKeyId: map['kmsKeyId'] as String,
    );
  }
}
