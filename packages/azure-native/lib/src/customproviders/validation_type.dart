/// The type of validation to run against a matching request.
enum ValidationType {
  valueSwagger("Swagger");

  const ValidationType(this.value);
  final String value;

  static ValidationType fromValue(String value) {
    for (final item in ValidationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationType value: $value');
  }
}

