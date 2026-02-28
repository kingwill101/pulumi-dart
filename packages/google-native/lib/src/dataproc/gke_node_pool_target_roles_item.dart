enum GkeNodePoolTargetRolesItem {
  roleUnspecified("ROLE_UNSPECIFIED"),
  default_("DEFAULT"),
  controller("CONTROLLER"),
  sparkDriver("SPARK_DRIVER"),
  sparkExecutor("SPARK_EXECUTOR");

  const GkeNodePoolTargetRolesItem(this.value);
  final String value;

  static GkeNodePoolTargetRolesItem fromValue(String value) {
    for (final item in GkeNodePoolTargetRolesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GkeNodePoolTargetRolesItem value: $value');
  }
}

