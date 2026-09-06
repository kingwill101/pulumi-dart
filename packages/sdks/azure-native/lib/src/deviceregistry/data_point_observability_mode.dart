import 'package:pulumi/pulumi.dart' as pulumi;

/// An indication of how the data point should be mapped to OpenTelemetry.
enum DataPointObservabilityMode implements pulumi.PulumiEnum<String> {
  none("None"),
  counter("Counter"),
  gauge("Gauge"),
  histogram("Histogram"),
  log("Log");

  const DataPointObservabilityMode(this.wireValue);
  @override
  final String wireValue;

  static DataPointObservabilityMode fromValue(String value) {
    for (final item in DataPointObservabilityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataPointObservabilityMode value: $value');
  }
}
