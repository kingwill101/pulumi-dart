/// Indicates the purpose of the parameter
enum ParamIndicator {
  expires("Expires"),
  keyId("KeyId"),
  signature("Signature");

  const ParamIndicator(this.wireValue);
  final String wireValue;

  static ParamIndicator fromValue(String value) {
    for (final item in ParamIndicator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParamIndicator value: $value');
  }
}

