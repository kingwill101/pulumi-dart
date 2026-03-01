/// Action to be taken after a logoff during the ramp up period.
enum SessionHandlingOperation {
  valueNone("None"),
  valueDeallocate("Deallocate");

  const SessionHandlingOperation(this.value);
  final String value;

  static SessionHandlingOperation fromValue(String value) {
    for (final item in SessionHandlingOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SessionHandlingOperation value: $value');
  }
}

