import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether it is allowed to select multiple classes in this category.
enum MultiSelect implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const MultiSelect(this.wireValue);
  @override
  final String wireValue;

  static MultiSelect fromValue(String value) {
    for (final item in MultiSelect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MultiSelect value: $value');
  }
}
