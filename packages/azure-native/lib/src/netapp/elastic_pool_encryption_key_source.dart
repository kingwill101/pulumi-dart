/// Pool Encryption Key Source.
enum ElasticPoolEncryptionKeySource {
  netApp("NetApp"),
  keyVault("KeyVault");

  const ElasticPoolEncryptionKeySource(this.value);
  final String value;

  static ElasticPoolEncryptionKeySource fromValue(String value) {
    for (final item in ElasticPoolEncryptionKeySource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticPoolEncryptionKeySource value: $value');
  }
}

