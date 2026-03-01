/// The type of error management to use for the mapping.
enum ErrorManagementTypes {
  valueRejectAndContinue("RejectAndContinue"),
  valueStopImport("StopImport"),
  valueRejectUntilLimit("RejectUntilLimit");

  const ErrorManagementTypes(this.value);
  final String value;

  static ErrorManagementTypes fromValue(String value) {
    for (final item in ErrorManagementTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorManagementTypes value: $value');
  }
}

