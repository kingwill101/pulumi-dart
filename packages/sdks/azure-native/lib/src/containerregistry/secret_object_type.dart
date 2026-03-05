/// The type of the secret object which determines how the value of the secret object has to be
/// interpreted.
enum SecretObjectType {
  valueOpaque("Opaque"),
  valueVaultsecret("Vaultsecret");

  const SecretObjectType(this.wireValue);
  final String wireValue;

  static SecretObjectType fromValue(String value) {
    for (final item in SecretObjectType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretObjectType value: $value');
  }
}

