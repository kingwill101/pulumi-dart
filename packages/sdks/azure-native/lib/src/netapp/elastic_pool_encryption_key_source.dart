import 'package:pulumi/pulumi.dart' as pulumi;

/// Pool Encryption Key Source.
enum ElasticPoolEncryptionKeySource implements pulumi.PulumiEnum<String> {
  netApp("NetApp"),
  keyVault("KeyVault");

  const ElasticPoolEncryptionKeySource(this.wireValue);
  @override
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
