/// Required. Type of TPU.
enum AcceleratorConfigType4 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigType4(this.value);
  final String value;

  static AcceleratorConfigType4 fromValue(String value) {
    for (final item in AcceleratorConfigType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigType4 value: $value');
  }
}
