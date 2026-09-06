import 'package:pulumi/pulumi.dart' as pulumi;

/// Supported type this scheduled task represents.
enum ScheduledType implements pulumi.PulumiEnum<String> {
  valueStopDevBox("StopDevBox");

  const ScheduledType(this.wireValue);
  @override
  final String wireValue;

  static ScheduledType fromValue(String value) {
    for (final item in ScheduledType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduledType value: $value');
  }
}
