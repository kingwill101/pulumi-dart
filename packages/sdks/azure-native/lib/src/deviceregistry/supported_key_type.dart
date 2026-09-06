import 'package:pulumi/pulumi.dart' as pulumi;

/// Crypto type: ECC.
enum SupportedKeyType implements pulumi.PulumiEnum<String> {
  eCC("ECC");

  const SupportedKeyType(this.wireValue);
  @override
  final String wireValue;

  static SupportedKeyType fromValue(String value) {
    for (final item in SupportedKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedKeyType value: $value');
  }
}
