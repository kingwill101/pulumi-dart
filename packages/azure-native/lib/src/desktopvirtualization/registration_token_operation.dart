/// The type of resetting the token.
enum RegistrationTokenOperation {
  valueDelete("Delete"),
  valueNone("None"),
  valueUpdate("Update");

  const RegistrationTokenOperation(this.value);
  final String value;

  static RegistrationTokenOperation fromValue(String value) {
    for (final item in RegistrationTokenOperation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationTokenOperation value: $value');
  }
}

