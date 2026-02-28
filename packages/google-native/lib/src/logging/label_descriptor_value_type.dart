/// The type of data that can be assigned to the label.
enum LabelDescriptorValueType {
  string("STRING"),
  bool("BOOL"),
  int64("INT64");

  const LabelDescriptorValueType(this.value);
  final String value;

  static LabelDescriptorValueType fromValue(String value) {
    for (final item in LabelDescriptorValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LabelDescriptorValueType value: $value');
  }
}
