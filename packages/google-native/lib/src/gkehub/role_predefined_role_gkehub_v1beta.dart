/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRoleGkehubV1beta {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRoleGkehubV1beta(this.value);
  final String value;

  static RolePredefinedRoleGkehubV1beta fromValue(String value) {
    for (final item in RolePredefinedRoleGkehubV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolePredefinedRoleGkehubV1beta value: $value');
  }
}

