/// Specifies the Unix file access level for the volume. It encompasses both read-only and read-write permissions. Additionally, NoAccess can be set to block all access to the volume
enum ElasticUnixAccessRule {
  readOnly("ReadOnly"),
  readWrite("ReadWrite"),
  noAccess("NoAccess");

  const ElasticUnixAccessRule(this.value);
  final String value;

  static ElasticUnixAccessRule fromValue(String value) {
    for (final item in ElasticUnixAccessRule.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticUnixAccessRule value: $value');
  }
}

