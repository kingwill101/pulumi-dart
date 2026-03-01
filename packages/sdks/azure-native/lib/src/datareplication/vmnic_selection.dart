/// Gets or sets the selection type of the NIC.
enum VMNicSelection {
  valueNotSelected("NotSelected"),
  valueSelectedByUser("SelectedByUser"),
  valueSelectedByDefault("SelectedByDefault"),
  valueSelectedByUserOverride("SelectedByUserOverride");

  const VMNicSelection(this.value);
  final String value;

  static VMNicSelection fromValue(String value) {
    for (final item in VMNicSelection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMNicSelection value: $value');
  }
}

