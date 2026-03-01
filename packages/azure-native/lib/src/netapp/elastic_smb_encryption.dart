/// Used to enable or disable encryption for in-flight SMB data volume. This flag can be modified during Elastic volume update operation as well. Only applicable for SMB protocol Elastic volumes.
enum ElasticSmbEncryption {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticSmbEncryption(this.value);
  final String value;

  static ElasticSmbEncryption fromValue(String value) {
    for (final item in ElasticSmbEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticSmbEncryption value: $value');
  }
}

