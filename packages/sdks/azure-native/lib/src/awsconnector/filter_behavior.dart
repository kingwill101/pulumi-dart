import 'package:pulumi/pulumi.dart' as pulumi;

/// How to handle logs that satisfy the filter's conditions and requirement.
enum FilterBehavior implements pulumi.PulumiEnum<String> {
  dROP("DROP"),
  kEEP("KEEP");

  const FilterBehavior(this.wireValue);
  @override
  final String wireValue;

  static FilterBehavior fromValue(String value) {
    for (final item in FilterBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterBehavior value: $value');
  }
}
