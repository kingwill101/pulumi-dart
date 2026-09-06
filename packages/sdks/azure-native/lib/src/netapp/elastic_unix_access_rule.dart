import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the Unix file access level for the volume. It encompasses both read-only and read-write permissions. Additionally, NoAccess can be set to block all access to the volume
enum ElasticUnixAccessRule implements pulumi.PulumiEnum<String> {
  readOnly("ReadOnly"),
  readWrite("ReadWrite"),
  noAccess("NoAccess");

  const ElasticUnixAccessRule(this.wireValue);
  @override
  final String wireValue;

  static ElasticUnixAccessRule fromValue(String value) {
    for (final item in ElasticUnixAccessRule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticUnixAccessRule value: $value');
  }
}
