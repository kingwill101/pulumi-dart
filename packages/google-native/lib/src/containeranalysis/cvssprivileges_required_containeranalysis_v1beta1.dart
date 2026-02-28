/// Defined in CVSS v3
enum CVSSPrivilegesRequiredContaineranalysisV1beta1 {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSPrivilegesRequiredContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSPrivilegesRequiredContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSPrivilegesRequiredContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSPrivilegesRequiredContaineranalysisV1beta1 value: $value');
  }
}

