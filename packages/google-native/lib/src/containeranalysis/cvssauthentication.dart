enum CVSSAuthentication {
  authenticationUnspecified("AUTHENTICATION_UNSPECIFIED"),
  authenticationMultiple("AUTHENTICATION_MULTIPLE"),
  authenticationSingle("AUTHENTICATION_SINGLE"),
  authenticationNone("AUTHENTICATION_NONE");

  const CVSSAuthentication(this.value);
  final String value;

  static CVSSAuthentication fromValue(String value) {
    for (final item in CVSSAuthentication.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSAuthentication value: $value');
  }
}
