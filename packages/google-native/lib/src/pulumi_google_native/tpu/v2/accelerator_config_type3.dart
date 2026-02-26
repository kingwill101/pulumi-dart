/// Required. Type of TPU.
enum AcceleratorConfigType3 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigType3(this.value);
  final String value;

  static AcceleratorConfigType3 fromValue(String value) {
    for (final item in AcceleratorConfigType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigType3 value: $value');
  }
}
