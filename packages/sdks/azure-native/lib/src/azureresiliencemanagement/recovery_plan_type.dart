/// The type of the recovery orchestration plan, which can be set during creation but cannot be changed afterward.
enum RecoveryPlanType {
  regional("Regional"),
  zonal("Zonal");

  const RecoveryPlanType(this.wireValue);
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
