import 'package:pulumi/pulumi.dart' as pulumi;

enum EngineMode implements pulumi.PulumiEnum<String> {
  provisioned("provisioned"),
  serverless("serverless"),
  parallelQuery("parallelquery"),
  global("global");

  const EngineMode(this.wireValue);
  @override
  final String wireValue;

  static EngineMode fromValue(String value) {
    for (final item in EngineMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EngineMode value: $value');
  }
}
