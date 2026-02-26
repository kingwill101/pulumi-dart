/// The type of data that can be assigned to the label.
enum LabelDescriptorValueType2 {
  string("STRING"),
  bool("BOOL"),
  int64("INT64");

  const LabelDescriptorValueType2(this.value);
  final String value;

  static LabelDescriptorValueType2 fromValue(String value) {
    for (final item in LabelDescriptorValueType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LabelDescriptorValueType2 value: $value');
  }
}
