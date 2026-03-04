/// Specifies the Unix file access level for the volume. It encompasses both read-only and read-write permissions. Additionally, NoAccess can be set to block all access to the volume
enum ElasticUnixAccessRule {
  readOnly("ReadOnly"),
  readWrite("ReadWrite"),
  noAccess("NoAccess");

  const ElasticUnixAccessRule(this.wireValue);
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
