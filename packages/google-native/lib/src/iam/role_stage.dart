/// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
enum RoleStage {
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED"),
  disabled("DISABLED"),
  eap("EAP");

  const RoleStage(this.value);
  final String value;

  static RoleStage fromValue(String value) {
    for (final item in RoleStage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoleStage value: $value');
  }
}
