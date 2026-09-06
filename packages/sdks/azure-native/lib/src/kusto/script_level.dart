import 'package:pulumi/pulumi.dart' as pulumi;

/// Differentiates between the type of script commands included - Database or Cluster. The default is Database.
enum ScriptLevel implements pulumi.PulumiEnum<String> {
  valueDatabase("Database"),
  valueCluster("Cluster");

  const ScriptLevel(this.wireValue);
  @override
  final String wireValue;

  static ScriptLevel fromValue(String value) {
    for (final item in ScriptLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptLevel value: $value');
  }
}
