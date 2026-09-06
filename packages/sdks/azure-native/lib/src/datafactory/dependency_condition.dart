import 'package:pulumi/pulumi.dart' as pulumi;

enum DependencyCondition implements pulumi.PulumiEnum<String> {
  succeeded("Succeeded"),
  failed("Failed"),
  skipped("Skipped"),
  completed("Completed");

  const DependencyCondition(this.wireValue);
  @override
  final String wireValue;

  static DependencyCondition fromValue(String value) {
    for (final item in DependencyCondition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DependencyCondition value: $value');
  }
}
