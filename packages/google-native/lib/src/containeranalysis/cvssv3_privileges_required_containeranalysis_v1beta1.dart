enum CVSSv3PrivilegesRequiredContaineranalysisV1beta1 {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSv3PrivilegesRequiredContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSv3PrivilegesRequiredContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSv3PrivilegesRequiredContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3PrivilegesRequiredContaineranalysisV1beta1 value: $value');
  }
}

