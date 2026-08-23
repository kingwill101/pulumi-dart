/// Pool Encryption Key Source.
enum ElasticPoolEncryptionKeySource {
  netApp("NetApp"),
  keyVault("KeyVault");

  const ElasticPoolEncryptionKeySource(this.wireValue);
  final String wireValue;

  static ElasticPoolEncryptionKeySource fromValue(String value) {
    for (final item in ElasticPoolEncryptionKeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticPoolEncryptionKeySource value: $value');
  }
}
