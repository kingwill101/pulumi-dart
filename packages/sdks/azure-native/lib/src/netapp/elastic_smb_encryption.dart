import 'package:pulumi/pulumi.dart' as pulumi;

/// Used to enable or disable encryption for in-flight SMB data volume. This flag can be modified during Elastic volume update operation as well. Only applicable for SMB protocol Elastic volumes.
enum ElasticSmbEncryption implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticSmbEncryption(this.wireValue);
  @override
  final String wireValue;

  static ElasticSmbEncryption fromValue(String value) {
    for (final item in ElasticSmbEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticSmbEncryption value: $value');
  }
}
