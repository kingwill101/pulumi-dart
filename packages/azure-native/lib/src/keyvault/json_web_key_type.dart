/// The type of the key. For valid values, see JsonWebKeyType.
enum JsonWebKeyType {
  valueEC("EC"),
  valueECHSM("EC-HSM"),
  valueRSA("RSA"),
  valueRSAHSM("RSA-HSM");

  const JsonWebKeyType(this.value);
  final String value;

  static JsonWebKeyType fromValue(String value) {
    for (final item in JsonWebKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonWebKeyType value: $value');
  }
}

