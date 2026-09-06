import 'package:pulumi/pulumi.dart' as pulumi;

/// Enabled or Disabled flag to turn on Group-based filtered sync
enum FilteredSync implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const FilteredSync(this.wireValue);
  @override
  final String wireValue;

  static FilteredSync fromValue(String value) {
    for (final item in FilteredSync.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilteredSync value: $value');
  }
}
