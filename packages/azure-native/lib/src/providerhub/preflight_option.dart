enum PreflightOption {
  none("None"),
  continueDeploymentOnFailure("ContinueDeploymentOnFailure"),
  defaultValidationOnly("DefaultValidationOnly");

  const PreflightOption(this.value);
  final String value;

  static PreflightOption fromValue(String value) {
    for (final item in PreflightOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PreflightOption value: $value');
  }
}

