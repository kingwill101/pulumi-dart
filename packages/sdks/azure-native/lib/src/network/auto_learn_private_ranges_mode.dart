/// The operation mode for automatically learning private ranges to not be SNAT
enum AutoLearnPrivateRangesMode {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AutoLearnPrivateRangesMode(this.wireValue);
  final String wireValue;

  static AutoLearnPrivateRangesMode fromValue(String value) {
    for (final item in AutoLearnPrivateRangesMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoLearnPrivateRangesMode value: $value');
  }
}
