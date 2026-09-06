import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the filter is an allow list or deny list. For more detail, please refer to the FilterType model.
enum FilterType implements pulumi.PulumiEnum<String> {
  allow("Allow"),
  deny("Deny");

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
