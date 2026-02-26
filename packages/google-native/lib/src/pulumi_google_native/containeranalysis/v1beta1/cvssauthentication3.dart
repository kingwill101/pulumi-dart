/// Defined in CVSS v2
enum CVSSAuthentication3 {
  authenticationUnspecified("AUTHENTICATION_UNSPECIFIED"),
  authenticationMultiple("AUTHENTICATION_MULTIPLE"),
  authenticationSingle("AUTHENTICATION_SINGLE"),
  authenticationNone("AUTHENTICATION_NONE");

  const CVSSAuthentication3(this.value);
  final String value;

  static CVSSAuthentication3 fromValue(String value) {
    for (final item in CVSSAuthentication3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAuthentication3 value: $value');
  }
}
