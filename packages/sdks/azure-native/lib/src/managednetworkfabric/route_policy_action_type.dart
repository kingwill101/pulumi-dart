/// Action type. Example: Permit | Deny | Continue.
enum RoutePolicyActionType {
  valuePermit("Permit"),
  valueDeny("Deny"),
  valueContinue("Continue");

  const RoutePolicyActionType(this.wireValue);
  final String wireValue;

  static RoutePolicyActionType fromValue(String value) {
    for (final item in RoutePolicyActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutePolicyActionType value: $value');
  }
}
