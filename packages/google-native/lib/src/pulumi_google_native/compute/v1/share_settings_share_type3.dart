/// Type of sharing for this shared-reservation
enum ShareSettingsShareType3 {
  local("LOCAL"),
  organization("ORGANIZATION"),
  shareTypeUnspecified("SHARE_TYPE_UNSPECIFIED"),
  specificProjects("SPECIFIC_PROJECTS");

  const ShareSettingsShareType3(this.value);
  final String value;

  static ShareSettingsShareType3 fromValue(String value) {
    for (final item in ShareSettingsShareType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareSettingsShareType3 value: $value');
  }
}
