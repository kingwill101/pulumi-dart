/// The validity of the contact. A contact is considered valid if it is the correct recipient for notifications for a particular resource.
enum FolderContactValidationState {
  validationStateUnspecified("VALIDATION_STATE_UNSPECIFIED"),
  valid("VALID"),
  invalid("INVALID");

  const FolderContactValidationState(this.value);
  final String value;

  static FolderContactValidationState fromValue(String value) {
    for (final item in FolderContactValidationState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderContactValidationState value: $value');
  }
}

