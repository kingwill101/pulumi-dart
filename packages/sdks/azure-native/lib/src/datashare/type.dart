import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity Type
enum Type implements pulumi.PulumiEnum<String> {
  valueSystemAssigned("SystemAssigned");

  const Type(this.wireValue);
  @override
  final String wireValue;

  static Type fromValue(String value) {
    for (final item in Type.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Type value: $value');
  }
}
