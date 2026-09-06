import 'package:pulumi/pulumi.dart' as pulumi;

/// Rest API method for target endpoint.
enum WebActivityMethod implements pulumi.PulumiEnum<String> {
  gET("GET"),
  pOST("POST"),
  pUT("PUT"),
  dELETE("DELETE");

  const WebActivityMethod(this.wireValue);
  @override
  final String wireValue;

  static WebActivityMethod fromValue(String value) {
    for (final item in WebActivityMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebActivityMethod value: $value');
  }
}
