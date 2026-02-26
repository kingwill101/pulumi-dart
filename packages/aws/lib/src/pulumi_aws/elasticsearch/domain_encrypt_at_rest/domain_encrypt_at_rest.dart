// ignore_for_file: unused_element, unnecessary_cast

class DomainEncryptAtRest {
  /// Whether to enable encryption at rest. If the <span pulumi-lang-nodejs="`encryptAtRest`" pulumi-lang-dotnet="`EncryptAtRest`" pulumi-lang-go="`encryptAtRest`" pulumi-lang-python="`encrypt_at_rest`" pulumi-lang-yaml="`encryptAtRest`" pulumi-lang-java="`encryptAtRest`">`encrypt_at_rest`</span> block is not provided then this defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Enabling encryption on new domains requires <span pulumi-lang-nodejs="`elasticsearchVersion`" pulumi-lang-dotnet="`ElasticsearchVersion`" pulumi-lang-go="`elasticsearchVersion`" pulumi-lang-python="`elasticsearch_version`" pulumi-lang-yaml="`elasticsearchVersion`" pulumi-lang-java="`elasticsearchVersion`">`elasticsearch_version`</span> 5.1 or greater.
  final bool enabled;

  /// KMS key ARN to encrypt the Elasticsearch domain with. If not specified then it defaults to using the `aws/es` service KMS key. Note that KMS will accept a KMS key ID but will return the key ARN. To prevent the provider detecting unwanted changes, use the key ARN instead.
  final String? kmsKeyId;

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
