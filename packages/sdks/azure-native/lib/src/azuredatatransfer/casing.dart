/// Specifies the text matching conditions based on casing. For more detail please refer to the Casing model.
enum Casing {
  insensitive("Insensitive"),
  sensitive("Sensitive");

  const Casing(this.wireValue);
  final String wireValue;

  static Casing fromValue(String value) {
    for (final item in Casing.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Casing value: $value');
  }
}
