/// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
enum OrganizationRoleStage {
  alpha("ALPHA"),
  beta("BETA"),
  ga("GA"),
  deprecated("DEPRECATED"),
  disabled("DISABLED"),
  eap("EAP");

  const OrganizationRoleStage(this.value);
  final String value;

  static OrganizationRoleStage fromValue(String value) {
    for (final item in OrganizationRoleStage.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationRoleStage value: $value');
  }
}
