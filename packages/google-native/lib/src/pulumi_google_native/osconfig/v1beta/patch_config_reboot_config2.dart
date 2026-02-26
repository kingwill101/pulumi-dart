/// Post-patch reboot settings.
enum PatchConfigRebootConfig2 {
  rebootConfigUnspecified("REBOOT_CONFIG_UNSPECIFIED"),
  default_("DEFAULT"),
  always("ALWAYS"),
  never("NEVER");

  const PatchConfigRebootConfig2(this.value);
  final String value;

  static PatchConfigRebootConfig2 fromValue(String value) {
    for (final item in PatchConfigRebootConfig2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchConfigRebootConfig2 value: $value');
  }
}
