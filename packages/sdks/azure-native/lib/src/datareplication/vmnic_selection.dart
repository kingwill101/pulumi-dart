/// Gets or sets the selection type of the NIC.
enum VMNicSelection {
  valueNotSelected("NotSelected"),
  valueSelectedByUser("SelectedByUser"),
  valueSelectedByDefault("SelectedByDefault"),
  valueSelectedByUserOverride("SelectedByUserOverride");

  const VMNicSelection(this.wireValue);
  final String wireValue;

  static VMNicSelection fromValue(String value) {
    for (final item in VMNicSelection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VMNicSelection value: $value');
  }
}
