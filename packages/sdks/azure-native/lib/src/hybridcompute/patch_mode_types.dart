/// Specifies the patch mode.
enum PatchModeTypes {
  valueImageDefault("ImageDefault"),
  valueAutomaticByPlatform("AutomaticByPlatform"),
  valueAutomaticByOS("AutomaticByOS"),
  valueManual("Manual");

  const PatchModeTypes(this.value);
  final String value;

  static PatchModeTypes fromValue(String value) {
    for (final item in PatchModeTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchModeTypes value: $value');
  }
}

