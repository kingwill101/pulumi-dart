/// The type of data that can be assigned to the label.
enum LabelDescriptorValueTypeMonitoringV3 {
  string("STRING"),
  bool("BOOL"),
  int64("INT64");

  const LabelDescriptorValueTypeMonitoringV3(this.value);
  final String value;

  static LabelDescriptorValueTypeMonitoringV3 fromValue(String value) {
    for (final item in LabelDescriptorValueTypeMonitoringV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LabelDescriptorValueTypeMonitoringV3 value: $value');
  }
}
