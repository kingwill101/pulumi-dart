/// The type of the key. For valid values, see JsonWebKeyType.
enum JsonWebKeyType {
  valueEC("EC"),
  valueECHSM("EC-HSM"),
  valueRSA("RSA"),
  valueRSAHSM("RSA-HSM");

  const JsonWebKeyType(this.wireValue);
  final String wireValue;

  static JsonWebKeyType fromValue(String value) {
    for (final item in JsonWebKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonWebKeyType value: $value');
  }
}
