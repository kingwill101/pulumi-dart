/// Specifies the patch mode.
enum PatchModeTypes {
  valueImageDefault("ImageDefault"),
  valueAutomaticByPlatform("AutomaticByPlatform"),
  valueAutomaticByOS("AutomaticByOS"),
  valueManual("Manual");

  const PatchModeTypes(this.wireValue);
  final String wireValue;

  static PatchModeTypes fromValue(String value) {
    for (final item in PatchModeTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PatchModeTypes value: $value');
  }
}

