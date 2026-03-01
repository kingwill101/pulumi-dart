/// CrossRegionRestore state
enum CrossRegionRestoreState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const CrossRegionRestoreState(this.value);
  final String value;

  static CrossRegionRestoreState fromValue(String value) {
    for (final item in CrossRegionRestoreState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossRegionRestoreState value: $value');
  }
}

