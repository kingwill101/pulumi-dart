/// The platform of the test history. - In response: always set. Returns the platform of the last execution if unknown.
enum HistoryTestPlatform {
  unknownPlatform("unknownPlatform"),
  android("android"),
  ios("ios");

  const HistoryTestPlatform(this.value);
  final String value;

  static HistoryTestPlatform fromValue(String value) {
    for (final item in HistoryTestPlatform.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HistoryTestPlatform value: $value');
  }
}

