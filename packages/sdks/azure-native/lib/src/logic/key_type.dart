import 'package:pulumi/pulumi.dart' as pulumi;

/// The key type.
enum KeyType implements pulumi.PulumiEnum<String> {
  valueNotSpecified("NotSpecified"),
  valuePrimary("Primary"),
  valueSecondary("Secondary");

  const KeyType(this.wireValue);
  @override
  final String wireValue;

  static KeyType fromValue(String value) {
    for (final item in KeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyType value: $value');
  }
}
