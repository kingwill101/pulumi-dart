// ignore_for_file: unused_element, unnecessary_cast

class DomainEncryptAtRest {
  /// Whether to enable encryption at rest. If the `encrypt_at_rest` block is not provided then this defaults to `false`. Enabling encryption on new domains requires `elasticsearch_version` 5.1 or greater.
  final bool enabled;

  /// KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the `aws/es` service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN. To prevent the provider detecting unwanted changes, use the key ARN instead.
  final String? kmsKeyId;

  /// Creates a new [DomainEncryptAtRest].
  /// [enabled] Whether to enable encryption at rest. If the `encrypt_at_rest` block is not provided then this defaults to `false`. Enabling encryption on new domains requires `elasticsearch_version` 5.1 or greater.
  /// [kmsKeyId] KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the `aws/es` service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN. To prevent the provider detecting unwanted changes, use the key ARN instead.
  DomainEncryptAtRest({
    required this.enabled,
    this.kmsKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    return map;
  }

  factory DomainEncryptAtRest.fromMap(Map<String, dynamic> map) {
    return DomainEncryptAtRest(
      enabled: map['enabled'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
    );
  }
}
