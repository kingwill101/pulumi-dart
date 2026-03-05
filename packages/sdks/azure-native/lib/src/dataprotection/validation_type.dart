/// Specifies the type of validation. In case of DeepValidation, all validations from /validateForBackup API will run again.
enum ValidationType {
  valueShallowValidation("ShallowValidation"),
  valueDeepValidation("DeepValidation");

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

