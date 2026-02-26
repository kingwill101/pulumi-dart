// ignore_for_file: unused_element, unnecessary_cast

class GetDomainEncryptionAtRest2 {
  /// Enabled disabled toggle for off-peak update window
  final bool enabled;

  /// KMS key id used to encrypt data at rest.
  final String kmsKeyId;

  GetDomainEncryptionAtRest2({
    required this.enabled,
    required this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['kmsKeyId'] = kmsKeyId;
    return map;
  }

  factory GetDomainEncryptionAtRest2.fromMap(Map<String, dynamic> map) {
    return GetDomainEncryptionAtRest2(
      enabled: map['enabled'] as bool,
      kmsKeyId: map['kmsKeyId'] as String,
    );
  }
}
