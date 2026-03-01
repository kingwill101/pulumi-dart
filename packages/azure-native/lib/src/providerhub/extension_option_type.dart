enum ExtensionOptionType {
  notSpecified("NotSpecified"),
  doNotMergeExistingReadOnlyAndSecretProperties("DoNotMergeExistingReadOnlyAndSecretProperties"),
  includeInternalMetadata("IncludeInternalMetadata");

  const ExtensionOptionType(this.value);
  final String value;

  static ExtensionOptionType fromValue(String value) {
    for (final item in ExtensionOptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExtensionOptionType value: $value');
  }
}

