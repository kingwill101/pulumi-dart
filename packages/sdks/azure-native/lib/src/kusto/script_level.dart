/// Differentiates between the type of script commands included - Database or Cluster. The default is Database.
enum ScriptLevel {
  valueDatabase("Database"),
  valueCluster("Cluster");

  const ScriptLevel(this.value);
  final String value;

  static ScriptLevel fromValue(String value) {
    for (final item in ScriptLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptLevel value: $value');
  }
}

