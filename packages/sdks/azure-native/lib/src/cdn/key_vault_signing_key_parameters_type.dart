enum KeyVaultSigningKeyParametersType {
  keyVaultSigningKeyParameters("KeyVaultSigningKeyParameters");

  const KeyVaultSigningKeyParametersType(this.wireValue);
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

