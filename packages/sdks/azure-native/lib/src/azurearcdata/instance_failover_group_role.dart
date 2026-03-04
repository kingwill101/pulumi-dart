/// The role of the SQL managed instance in this failover group.
enum InstanceFailoverGroupRole {
  valuePrimary("primary"),
  valueSecondary("secondary"),
  valueForcePrimaryAllowDataLoss("force-primary-allow-data-loss"),
  valueForceSecondary("force-secondary");

  const InstanceFailoverGroupRole(this.wireValue);
  final String wireValue;

  static InstanceFailoverGroupRole fromValue(String value) {
    for (final item in InstanceFailoverGroupRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceFailoverGroupRole value: $value');
  }
}
