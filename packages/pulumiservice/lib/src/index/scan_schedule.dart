enum ScanSchedule {
  valueNone("none"),
  valueDaily("daily");

  const ScanSchedule(this.value);
  final String value;

  static ScanSchedule fromValue(String value) {
    for (final item in ScanSchedule.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanSchedule value: $value');
  }
}

