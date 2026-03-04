/// CrossRegionRestore state
enum CrossRegionRestoreState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const CrossRegionRestoreState(this.wireValue);
  final String wireValue;

  static CrossRegionRestoreState fromValue(String value) {
    for (final item in CrossRegionRestoreState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossRegionRestoreState value: $value');
  }
}
