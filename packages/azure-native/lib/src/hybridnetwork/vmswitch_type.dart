/// The type of the VM switch.
enum VMSwitchType {
  valueUnknown("Unknown"),
  valueManagement("Management"),
  valueWan("Wan"),
  valueLan("Lan");

  const VMSwitchType(this.value);
  final String value;

  static VMSwitchType fromValue(String value) {
    for (final item in VMSwitchType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMSwitchType value: $value');
  }
}

