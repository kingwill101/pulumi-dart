enum KeyVaultSigningKeyParametersType {
  keyVaultSigningKeyParameters("KeyVaultSigningKeyParameters");

  const KeyVaultSigningKeyParametersType(this.value);
  final String value;

  static KeyVaultSigningKeyParametersType fromValue(String value) {
    for (final item in KeyVaultSigningKeyParametersType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyVaultSigningKeyParametersType value: $value');
  }
}

