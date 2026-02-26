/// Type of sharing for this shared-reservation
enum ShareSettingsShareType2 {
  local("LOCAL"),
  organization("ORGANIZATION"),
  shareTypeUnspecified("SHARE_TYPE_UNSPECIFIED"),
  specificProjects("SPECIFIC_PROJECTS");

  const ShareSettingsShareType2(this.value);
  final String value;

  static ShareSettingsShareType2 fromValue(String value) {
    for (final item in ShareSettingsShareType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareSettingsShareType2 value: $value');
  }
}
