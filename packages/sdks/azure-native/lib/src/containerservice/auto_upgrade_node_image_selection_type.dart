import 'package:pulumi/pulumi.dart' as pulumi;

/// The node image upgrade type.
enum AutoUpgradeNodeImageSelectionType implements pulumi.PulumiEnum<String> {
  latest("Latest"),
  consistent("Consistent");

  const AutoUpgradeNodeImageSelectionType(this.wireValue);
  @override
  final String wireValue;

  static AutoUpgradeNodeImageSelectionType fromValue(String value) {
    for (final item in AutoUpgradeNodeImageSelectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpgradeNodeImageSelectionType value: $value');
  }
}
