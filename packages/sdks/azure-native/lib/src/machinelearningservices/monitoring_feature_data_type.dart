import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the data type of the metric threshold.
enum MonitoringFeatureDataType implements pulumi.PulumiEnum<String> {
  numerical("Numerical"),
  categorical("Categorical");

  const MonitoringFeatureDataType(this.wireValue);
  @override
  final String wireValue;

  static MonitoringFeatureDataType fromValue(String value) {
    for (final item in MonitoringFeatureDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringFeatureDataType value: $value');
  }
}
