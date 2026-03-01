/// Style of terminal font.
enum FontStyle {
  valueNotSpecified("NotSpecified"),
  valueMonospace("Monospace"),
  valueCourier("Courier");

  const FontStyle(this.value);
  final String value;

  static FontStyle fromValue(String value) {
    for (final item in FontStyle.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FontStyle value: $value');
  }
}

