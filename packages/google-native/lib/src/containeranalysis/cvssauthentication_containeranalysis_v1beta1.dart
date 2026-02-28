/// Defined in CVSS v2
enum CVSSAuthenticationContaineranalysisV1beta1 {
  authenticationUnspecified("AUTHENTICATION_UNSPECIFIED"),
  authenticationMultiple("AUTHENTICATION_MULTIPLE"),
  authenticationSingle("AUTHENTICATION_SINGLE"),
  authenticationNone("AUTHENTICATION_NONE");

  const CVSSAuthenticationContaineranalysisV1beta1(this.value);
  final String value;

  static CVSSAuthenticationContaineranalysisV1beta1 fromValue(String value) {
    for (final item in CVSSAuthenticationContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAuthenticationContaineranalysisV1beta1 value: $value');
  }
}

