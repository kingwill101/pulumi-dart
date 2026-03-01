/// Volume size
enum SizeTypes {
  valueSmall("Small"),
  valueMedium("Medium"),
  valueLarge("Large");

  const SizeTypes(this.value);
  final String value;

  static SizeTypes fromValue(String value) {
    for (final item in SizeTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SizeTypes value: $value');
  }
}

