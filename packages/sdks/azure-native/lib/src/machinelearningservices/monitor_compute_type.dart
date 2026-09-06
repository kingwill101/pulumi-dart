import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of signal to monitor.
enum MonitorComputeType implements pulumi.PulumiEnum<String> {
  serverlessSpark("ServerlessSpark");

  const MonitorComputeType(this.wireValue);
  @override
  final String wireValue;

  static MonitorComputeType fromValue(String value) {
    for (final item in MonitorComputeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitorComputeType value: $value');
  }
}
