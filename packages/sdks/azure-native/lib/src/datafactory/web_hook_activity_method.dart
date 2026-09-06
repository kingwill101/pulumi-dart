import 'package:pulumi/pulumi.dart' as pulumi;

/// Rest API method for target endpoint.
enum WebHookActivityMethod implements pulumi.PulumiEnum<String> {
  pOST("POST");

  const WebHookActivityMethod(this.wireValue);
  @override
  final String wireValue;

  static WebHookActivityMethod fromValue(String value) {
    for (final item in WebHookActivityMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebHookActivityMethod value: $value');
  }
}
