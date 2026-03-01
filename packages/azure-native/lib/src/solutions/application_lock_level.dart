/// The managed application lock level.
enum ApplicationLockLevel {
  valueCanNotDelete("CanNotDelete"),
  valueReadOnly("ReadOnly"),
  valueNone("None");

  const ApplicationLockLevel(this.value);
  final String value;

  static ApplicationLockLevel fromValue(String value) {
    for (final item in ApplicationLockLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationLockLevel value: $value');
  }
}

