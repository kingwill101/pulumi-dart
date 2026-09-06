import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum that discriminates between filter types. Currently only `Simple` type is supported.
enum FilterType implements pulumi.PulumiEnum<String> {
  valueSimple("Simple");

  const FilterType(this.wireValue);
  @override
  final String wireValue;

  static FilterType fromValue(String value) {
    for (final item in FilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterType value: $value');
  }
}
