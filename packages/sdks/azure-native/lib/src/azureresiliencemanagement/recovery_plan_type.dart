import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the recovery orchestration plan, which can be set during creation but cannot be changed afterward.
enum RecoveryPlanType implements pulumi.PulumiEnum<String> {
  regional("Regional"),
  zonal("Zonal");

  const RecoveryPlanType(this.wireValue);
  @override
  final String wireValue;

  static RecoveryPlanType fromValue(String value) {
    for (final item in RecoveryPlanType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryPlanType value: $value');
  }
}
