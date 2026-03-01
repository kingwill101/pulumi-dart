/// Indicates the purpose of the parameter
enum ParamIndicator {
  expires("Expires"),
  keyId("KeyId"),
  signature("Signature");

  const ParamIndicator(this.value);
  final String value;

  static ParamIndicator fromValue(String value) {
    for (final item in ParamIndicator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParamIndicator value: $value');
  }
}

