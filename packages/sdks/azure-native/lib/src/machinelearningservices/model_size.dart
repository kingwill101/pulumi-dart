/// Image model size.
enum ModelSize {
  none("None"),
  small("Small"),
  medium("Medium"),
  large("Large"),
  extraLarge("ExtraLarge");

  const ModelSize(this.wireValue);
  final String wireValue;

  static ModelSize fromValue(String value) {
    for (final item in ModelSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ModelSize value: $value');
  }
}
