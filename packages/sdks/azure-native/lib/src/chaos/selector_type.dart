import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum of the selector type.
enum SelectorType implements pulumi.PulumiEnum<String> {
  valueList("List"),
  valueQuery("Query");

  const SelectorType(this.wireValue);
  @override
  final String wireValue;

  static SelectorType fromValue(String value) {
    for (final item in SelectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SelectorType value: $value');
  }
}
