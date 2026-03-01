enum RequestValidator {
  valueALL("ALL"),
  valuePARAMSONLY("PARAMS_ONLY"),
  valueBODYONLY("BODY_ONLY");

  const RequestValidator(this.value);
  final String value;

  static RequestValidator fromValue(String value) {
    for (final item in RequestValidator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestValidator value: $value');
  }
}

