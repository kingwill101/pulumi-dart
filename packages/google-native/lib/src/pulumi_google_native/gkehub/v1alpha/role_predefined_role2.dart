/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRole2 {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRole2(this.value);
  final String value;

  static RolePredefinedRole2 fromValue(String value) {
    for (final item in RolePredefinedRole2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolePredefinedRole2 value: $value');
  }
}
