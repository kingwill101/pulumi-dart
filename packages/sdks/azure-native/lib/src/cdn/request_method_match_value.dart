import 'package:pulumi/pulumi.dart' as pulumi;

enum RequestMethodMatchValue implements pulumi.PulumiEnum<String> {
  gET("GET"),
  hEAD("HEAD"),
  pOST("POST"),
  pUT("PUT"),
  dELETE("DELETE"),
  oPTIONS("OPTIONS"),
  tRACE("TRACE");

  const RequestMethodMatchValue(this.wireValue);
  @override
  final String wireValue;

  static RequestMethodMatchValue fromValue(String value) {
    for (final item in RequestMethodMatchValue.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RequestMethodMatchValue value: $value');
  }
}
