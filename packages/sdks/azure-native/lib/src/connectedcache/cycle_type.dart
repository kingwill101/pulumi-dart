/// Update Cycle Type
enum CycleType {
  preview("Preview"),
  slow("Slow"),
  fast("Fast");

  const CycleType(this.wireValue);
  final String wireValue;

  static CycleType fromValue(String value) {
    for (final item in CycleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CycleType value: $value');
  }
}
