/// The resource validation.
enum ResourceValidation {
  notSpecified("NotSpecified"),
  reservedWords("ReservedWords"),
  profaneWords("ProfaneWords");

  const ResourceValidation(this.value);
  final String value;

  static ResourceValidation fromValue(String value) {
    for (final item in ResourceValidation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceValidation value: $value');
  }
}

