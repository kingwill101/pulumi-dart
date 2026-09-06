import 'package:pulumi/pulumi.dart' as pulumi;

enum KeyVaultSigningKeyParametersType implements pulumi.PulumiEnum<String> {
  keyVaultSigningKeyParameters("KeyVaultSigningKeyParameters");

  const KeyVaultSigningKeyParametersType(this.wireValue);
  @override
  final String wireValue;

  static KeyVaultSigningKeyParametersType fromValue(String value) {
    for (final item in KeyVaultSigningKeyParametersType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyVaultSigningKeyParametersType value: $value');
  }
}
