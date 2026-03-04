/// Rest API method for target endpoint.
enum AzureFunctionActivityMethod {
  valueGET("GET"),
  valuePOST("POST"),
  valuePUT("PUT"),
  valueDELETE("DELETE"),
  valueOPTIONS("OPTIONS"),
  valueHEAD("HEAD"),
  valueTRACE("TRACE");

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
