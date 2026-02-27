/// The type of data that can be assigned to the label.
enum LabelDescriptorValueTypeServicemanagementV1 {
  string("STRING"),
  bool("BOOL"),
  int64("INT64");

  const LabelDescriptorValueTypeServicemanagementV1(this.value);
  final String value;

  static LabelDescriptorValueTypeServicemanagementV1 fromValue(String value) {
    for (final item in LabelDescriptorValueTypeServicemanagementV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LabelDescriptorValueTypeServicemanagementV1 value: $value');
  }
}
