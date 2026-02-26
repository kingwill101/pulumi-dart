/// Defined in CVSS v2
enum CVSSAuthentication2 {
  authenticationUnspecified("AUTHENTICATION_UNSPECIFIED"),
  authenticationMultiple("AUTHENTICATION_MULTIPLE"),
  authenticationSingle("AUTHENTICATION_SINGLE"),
  authenticationNone("AUTHENTICATION_NONE");

  const CVSSAuthentication2(this.value);
  final String value;

  static CVSSAuthentication2 fromValue(String value) {
    for (final item in CVSSAuthentication2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAuthentication2 value: $value');
  }
}
