import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum TargetHealthStateEnum implements pulumi.PulumiEnum<String> {
  draining("draining"),
  healthy("healthy"),
  initial("initial"),
  unavailable("unavailable"),
  unhealthy("unhealthy"),
  unhealthyDraining("unhealthy.draining"),
  unused("unused");

  const TargetHealthStateEnum(this.wireValue);
  @override
  final String wireValue;

  static TargetHealthStateEnum fromValue(String value) {
    for (final item in TargetHealthStateEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetHealthStateEnum value: $value');
  }
}
