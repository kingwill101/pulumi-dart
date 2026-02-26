/// The type of data that can be assigned to the label.
enum LabelDescriptorValueType3 {
  string("STRING"),
  bool("BOOL"),
  int64("INT64");

  const LabelDescriptorValueType3(this.value);
  final String value;

  static LabelDescriptorValueType3 fromValue(String value) {
    for (final item in LabelDescriptorValueType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LabelDescriptorValueType3 value: $value');
  }
}
