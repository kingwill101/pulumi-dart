/// The fact name of the policy (e.g. LabVmCount, LabVmSize, MaxVmsAllowedPerLab, etc.
enum PolicyFactName {
  userOwnedLabVmCount("UserOwnedLabVmCount"),
  userOwnedLabPremiumVmCount("UserOwnedLabPremiumVmCount"),
  labVmCount("LabVmCount"),
  labPremiumVmCount("LabPremiumVmCount"),
  labVmSize("LabVmSize"),
  galleryImage("GalleryImage"),
  userOwnedLabVmCountInSubnet("UserOwnedLabVmCountInSubnet"),
  labTargetCost("LabTargetCost"),
  environmentTemplate("EnvironmentTemplate"),
  scheduleEditPermission("ScheduleEditPermission");

  const PolicyFactName(this.value);
  final String value;

  static PolicyFactName fromValue(String value) {
    for (final item in PolicyFactName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyFactName value: $value');
  }
}

