/// Auto Update Ring Type which is stable or beta as new values. slow or fast are legacy from version 2026-06-01.
enum AutoUpdateRingType {
  preview("Preview"),
  slow("Slow"),
  fast("Fast");

  const AutoUpdateRingType(this.wireValue);
  final String wireValue;

  static AutoUpdateRingType fromValue(String value) {
    for (final item in AutoUpdateRingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpdateRingType value: $value');
  }
}
