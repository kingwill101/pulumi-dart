import 'package:pulumi/pulumi.dart' as pulumi;

/// Allows clients to access the volume with at least NFSv4.1 protocol.
enum ElasticNfsv4Access implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticNfsv4Access(this.wireValue);
  @override
  final String wireValue;

  static ElasticNfsv4Access fromValue(String value) {
    for (final item in ElasticNfsv4Access.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticNfsv4Access value: $value');
  }
}
