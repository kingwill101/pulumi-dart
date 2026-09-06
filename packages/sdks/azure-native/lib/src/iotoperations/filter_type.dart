import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of dataflow operation.
enum FilterType implements pulumi.PulumiEnum<String> {
  filter("Filter");

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
