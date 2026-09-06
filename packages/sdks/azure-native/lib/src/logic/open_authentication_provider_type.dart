import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of provider for OAuth.
enum OpenAuthenticationProviderType implements pulumi.PulumiEnum<String> {
  valueAAD("AAD");

  const OpenAuthenticationProviderType(this.wireValue);
  @override
  final String wireValue;

  static OpenAuthenticationProviderType fromValue(String value) {
    for (final item in OpenAuthenticationProviderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OpenAuthenticationProviderType value: $value');
  }
}
