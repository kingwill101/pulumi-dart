/// Size of terminal font.
enum FontSize {
  valueNotSpecified("NotSpecified"),
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const FontSize(this.value);
  final String value;

  static FontSize fromValue(String value) {
    for (final item in FontSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FontSize value: $value');
  }
}

