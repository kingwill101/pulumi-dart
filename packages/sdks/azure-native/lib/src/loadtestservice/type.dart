import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity type to use for accessing encryption key Url.
enum Type implements pulumi.PulumiEnum<String> {
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned");

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
