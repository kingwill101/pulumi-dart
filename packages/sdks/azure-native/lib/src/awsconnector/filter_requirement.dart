import 'package:pulumi/pulumi.dart' as pulumi;

/// Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition.
enum FilterRequirement implements pulumi.PulumiEnum<String> {
  mEETSALL("MEETS_ALL"),
  mEETSANY("MEETS_ANY");

  const FilterRequirement(this.wireValue);
  @override
  final String wireValue;

  static FilterRequirement fromValue(String value) {
    for (final item in FilterRequirement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterRequirement value: $value');
  }
}
