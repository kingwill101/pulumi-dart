import 'package:pulumi/pulumi.dart' as pulumi;

/// Sort order for composite paths.
enum CompositePathSortOrder implements pulumi.PulumiEnum<String> {
  valueAscending("ascending"),
  valueDescending("descending");

  const CompositePathSortOrder(this.wireValue);
  @override
  final String wireValue;

  static CompositePathSortOrder fromValue(String value) {
    for (final item in CompositePathSortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositePathSortOrder value: $value');
  }
}
