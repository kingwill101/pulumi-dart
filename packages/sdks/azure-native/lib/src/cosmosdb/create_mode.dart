import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum to indicate the mode of resource creation.
enum CreateMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueRestore("Restore");

  const CreateMode(this.wireValue);
  @override
  final String wireValue;

  static CreateMode fromValue(String value) {
    for (final item in CreateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CreateMode value: $value');
  }
}
