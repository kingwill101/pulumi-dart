/// The type of validation to run against a matching request.
enum ValidationType {
  valueSwagger("Swagger");

  const ValidationType(this.wireValue);
  final String wireValue;

  static ValidationType fromValue(String value) {
    for (final item in ValidationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ValidationType value: $value');
  }
}
