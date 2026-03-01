/// Required. Type of TPU.
enum AcceleratorConfigType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigType(this.value);
  final String value;

  static AcceleratorConfigType fromValue(String value) {
    for (final item in AcceleratorConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigType value: $value');
  }
}
