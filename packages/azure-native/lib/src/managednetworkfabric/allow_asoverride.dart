/// Enable Or Disable state.
enum AllowASOverride {
  valueEnable("Enable"),
  valueDisable("Disable");

  const AllowASOverride(this.value);
  final String value;

  static AllowASOverride fromValue(String value) {
    for (final item in AllowASOverride.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowASOverride value: $value');
  }
}

