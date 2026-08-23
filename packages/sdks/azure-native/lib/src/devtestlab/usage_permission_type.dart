/// Indicates whether public IP addresses can be assigned to virtual machines on this subnet (i.e. Allow, Deny).
enum UsagePermissionType {
  default_("Default"),
  deny("Deny"),
  allow("Allow");

  const UsagePermissionType(this.wireValue);
  final String wireValue;

  static UsagePermissionType fromValue(String value) {
    for (final item in UsagePermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsagePermissionType value: $value');
  }
}
