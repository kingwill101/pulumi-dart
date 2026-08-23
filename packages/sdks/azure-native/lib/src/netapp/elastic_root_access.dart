/// Indicates whether root access to the volume is granted to clients affected by this rule
enum ElasticRootAccess {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticRootAccess(this.wireValue);
  final String wireValue;

  static ElasticRootAccess fromValue(String value) {
    for (final item in ElasticRootAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticRootAccess value: $value');
  }
}
