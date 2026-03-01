/// Defines if image needs to be rebuilt based on base image changes.
enum AutoRebuildSetting {
  valueDisabled("Disabled"),
  valueOnBaseImageUpdate("OnBaseImageUpdate");

  const AutoRebuildSetting(this.value);
  final String value;

  static AutoRebuildSetting fromValue(String value) {
    for (final item in AutoRebuildSetting.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoRebuildSetting value: $value');
  }
}

