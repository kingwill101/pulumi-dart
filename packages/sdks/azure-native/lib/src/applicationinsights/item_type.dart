import 'package:pulumi/pulumi.dart' as pulumi;

/// Enum indicating the type of the Analytics item.
enum ItemType implements pulumi.PulumiEnum<String> {
  none("none"),
  query("query"),
  recent("recent"),
  function("function");

  const ItemType(this.wireValue);
  @override
  final String wireValue;

  static ItemType fromValue(String value) {
    for (final item in ItemType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ItemType value: $value');
  }
}
