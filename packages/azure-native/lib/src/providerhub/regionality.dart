/// The regionality.
enum Regionality {
  notSpecified("NotSpecified"),
  global("Global"),
  regional("Regional");

  const Regionality(this.value);
  final String value;

  static Regionality fromValue(String value) {
    for (final item in Regionality.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Regionality value: $value');
  }
}

