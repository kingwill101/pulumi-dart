/// Indicates whether root access to the volume is granted to clients affected by this rule
enum ElasticRootAccess {
  enabled("Enabled"),
  disabled("Disabled");

  const ElasticRootAccess(this.value);
  final String value;

  static ElasticRootAccess fromValue(String value) {
    for (final item in ElasticRootAccess.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticRootAccess value: $value');
  }
}

