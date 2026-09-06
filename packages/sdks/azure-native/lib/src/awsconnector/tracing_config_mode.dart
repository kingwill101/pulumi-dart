import 'package:pulumi/pulumi.dart' as pulumi;

/// The tracing mode.
enum TracingConfigMode implements pulumi.PulumiEnum<String> {
  active("Active"),
  passThrough("PassThrough");

  const TracingConfigMode(this.wireValue);
  @override
  final String wireValue;

  static TracingConfigMode fromValue(String value) {
    for (final item in TracingConfigMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TracingConfigMode value: $value');
  }
}
