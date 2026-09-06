import 'package:pulumi/pulumi.dart' as pulumi;

/// The api key setting of the Grafana instance.
enum ApiKey implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ApiKey(this.wireValue);
  @override
  final String wireValue;

  static ApiKey fromValue(String value) {
    for (final item in ApiKey.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApiKey value: $value');
  }
}
