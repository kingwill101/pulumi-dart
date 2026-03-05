/// Enable Or Disable state.
enum AllowASOverride {
  valueEnable("Enable"),
  valueDisable("Disable");

  const AllowASOverride(this.wireValue);
  final String wireValue;

  static AllowASOverride fromValue(String value) {
    for (final item in AllowASOverride.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowASOverride value: $value');
  }
}

