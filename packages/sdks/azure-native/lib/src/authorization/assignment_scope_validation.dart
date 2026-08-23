/// The option whether validate the exemption is at or under the assignment scope.
enum AssignmentScopeValidation {
  valueDefault("Default"),
  valueDoNotValidate("DoNotValidate");

  const AssignmentScopeValidation(this.wireValue);
  final String wireValue;

  static AssignmentScopeValidation fromValue(String value) {
    for (final item in AssignmentScopeValidation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentScopeValidation value: $value');
  }
}
