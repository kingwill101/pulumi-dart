/// The mode of includeChangeDetails feature. The flag configures whether to include or exclude content of the change before and after values.
enum ChangeDetailsMode {
  valueNone("None"),
  valueInclude("Include"),
  valueExclude("Exclude");

  const ChangeDetailsMode(this.wireValue);
  final String wireValue;

  static ChangeDetailsMode fromValue(String value) {
    for (final item in ChangeDetailsMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChangeDetailsMode value: $value');
  }
}

