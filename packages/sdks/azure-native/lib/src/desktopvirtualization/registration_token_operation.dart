/// The type of resetting the token.
enum RegistrationTokenOperation {
  valueDelete("Delete"),
  valueNone("None"),
  valueUpdate("Update");

  const RegistrationTokenOperation(this.wireValue);
  final String wireValue;

  static RegistrationTokenOperation fromValue(String value) {
    for (final item in RegistrationTokenOperation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegistrationTokenOperation value: $value');
  }
}

