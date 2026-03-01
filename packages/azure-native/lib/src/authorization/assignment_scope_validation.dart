/// The option whether validate the exemption is at or under the assignment scope.
enum AssignmentScopeValidation {
  valueDefault("Default"),
  valueDoNotValidate("DoNotValidate");

  const AssignmentScopeValidation(this.value);
  final String value;

  static AssignmentScopeValidation fromValue(String value) {
    for (final item in AssignmentScopeValidation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentScopeValidation value: $value');
  }
}

