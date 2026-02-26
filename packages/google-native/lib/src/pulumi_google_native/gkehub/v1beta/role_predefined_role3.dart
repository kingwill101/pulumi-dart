/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRole3 {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRole3(this.value);
  final String value;

  static RolePredefinedRole3 fromValue(String value) {
    for (final item in RolePredefinedRole3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolePredefinedRole3 value: $value');
  }
}
