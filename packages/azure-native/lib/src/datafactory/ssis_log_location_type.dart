/// The type of SSIS log location.
enum SsisLogLocationType {
  valueFile("File");

  const SsisLogLocationType(this.value);
  final String value;

  static SsisLogLocationType fromValue(String value) {
    for (final item in SsisLogLocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisLogLocationType value: $value');
  }
}

