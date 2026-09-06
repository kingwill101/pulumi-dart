import 'package:pulumi/pulumi.dart' as pulumi;

/// Rest API method for target endpoint.
enum AzureFunctionActivityMethod implements pulumi.PulumiEnum<String> {
  gET("GET"),
  pOST("POST"),
  pUT("PUT"),
  dELETE("DELETE"),
  oPTIONS("OPTIONS"),
  hEAD("HEAD"),
  tRACE("TRACE");

  const AzureFunctionActivityMethod(this.wireValue);
  @override
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
