enum AllowedMethods {
  valueDELETE("DELETE"),
  valueGET("GET"),
  valueHEAD("HEAD"),
  valueMERGE("MERGE"),
  valuePOST("POST"),
  valueOPTIONS("OPTIONS"),
  valuePUT("PUT"),
  valuePATCH("PATCH"),
  valueCONNECT("CONNECT"),
  valueTRACE("TRACE");

  const AllowedMethods(this.value);
  final String value;

  static AllowedMethods fromValue(String value) {
    for (final item in AllowedMethods.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedMethods value: $value');
  }
}

