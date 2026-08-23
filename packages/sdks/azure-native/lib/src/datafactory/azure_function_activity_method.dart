/// Rest API method for target endpoint.
enum AzureFunctionActivityMethod {
  gET("GET"),
  pOST("POST"),
  pUT("PUT"),
  dELETE("DELETE"),
  oPTIONS("OPTIONS"),
  hEAD("HEAD"),
  tRACE("TRACE");

  const AzureFunctionActivityMethod(this.wireValue);
  final String wireValue;

  static AzureFunctionActivityMethod fromValue(String value) {
    for (final item in AzureFunctionActivityMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureFunctionActivityMethod value: $value');
  }
}
