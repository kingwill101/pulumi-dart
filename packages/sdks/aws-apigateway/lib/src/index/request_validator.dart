enum RequestValidator {
  valueALL("ALL"),
  valuePARAMSONLY("PARAMS_ONLY"),
  valueBODYONLY("BODY_ONLY");

  const RequestValidator(this.wireValue);
  final String wireValue;

  static RequestValidator fromValue(String value) {
    for (final item in RequestValidator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestValidator value: $value');
  }
}
