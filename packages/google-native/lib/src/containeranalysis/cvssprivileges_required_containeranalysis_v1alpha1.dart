/// Defined in CVSS v3
enum CVSSPrivilegesRequiredContaineranalysisV1alpha1 {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSPrivilegesRequiredContaineranalysisV1alpha1(this.value);
  final String value;

  static CVSSPrivilegesRequiredContaineranalysisV1alpha1 fromValue(
    String value,
  ) {
    for (final item in CVSSPrivilegesRequiredContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CVSSPrivilegesRequiredContaineranalysisV1alpha1 value: $value',
    );
  }
}
