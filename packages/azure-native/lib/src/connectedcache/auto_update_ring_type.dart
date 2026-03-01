/// Auto Update Ring Type which is slow or fast etc.
enum AutoUpdateRingType {
  preview("Preview"),
  slow("Slow"),
  fast("Fast");

  const AutoUpdateRingType(this.value);
  final String value;

  static AutoUpdateRingType fromValue(String value) {
    for (final item in AutoUpdateRingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoUpdateRingType value: $value');
  }
}

