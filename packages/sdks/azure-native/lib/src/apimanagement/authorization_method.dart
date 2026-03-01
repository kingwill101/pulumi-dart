enum AuthorizationMethod {
  valueHEAD("HEAD"),
  valueOPTIONS("OPTIONS"),
  valueTRACE("TRACE"),
  valueGET("GET"),
  valuePOST("POST"),
  valuePUT("PUT"),
  valuePATCH("PATCH"),
  valueDELETE("DELETE");

  const AuthorizationMethod(this.value);
  final String value;

  static AuthorizationMethod fromValue(String value) {
    for (final item in AuthorizationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationMethod value: $value');
  }
}

