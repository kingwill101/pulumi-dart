import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the replication metrics are enabled.
enum MetricsStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const MetricsStatus(this.wireValue);
  @override
  final String wireValue;

  static MetricsStatus fromValue(String value) {
    for (final item in MetricsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetricsStatus value: $value');
  }
}
