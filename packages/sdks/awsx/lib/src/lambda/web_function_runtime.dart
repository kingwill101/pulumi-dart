import 'package:pulumi/pulumi.dart' as pulumi;

enum WebFunctionRuntime implements pulumi.PulumiEnum<String> {
  nodeJS24X("nodejs24.x"),
  nODEJSLATEST("nodejs-latest");

  const WebFunctionRuntime(this.wireValue);
  @override
  final String wireValue;

  static WebFunctionRuntime fromValue(String value) {
    for (final item in WebFunctionRuntime.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebFunctionRuntime value: $value');
  }
}
