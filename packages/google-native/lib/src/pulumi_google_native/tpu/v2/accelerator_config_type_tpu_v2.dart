/// Required. Type of TPU.
enum AcceleratorConfigTypeTpuV2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  v2("V2"),
  v3("V3"),
  v4("V4");

  const AcceleratorConfigTypeTpuV2(this.value);
  final String value;

  static AcceleratorConfigTypeTpuV2 fromValue(String value) {
    for (final item in AcceleratorConfigTypeTpuV2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigTypeTpuV2 value: $value');
  }
}
