/// Update Cycle Type
enum CycleType {
  preview("Preview"),
  slow("Slow"),
  fast("Fast");

  const CycleType(this.value);
  final String value;

  static CycleType fromValue(String value) {
    for (final item in CycleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CycleType value: $value');
  }
}

