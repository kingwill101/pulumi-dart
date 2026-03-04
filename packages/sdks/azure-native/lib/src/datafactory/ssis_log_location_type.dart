/// The type of SSIS log location.
enum SsisLogLocationType {
  valueFile("File");

  const SsisLogLocationType(this.wireValue);
  final String wireValue;

  static SsisLogLocationType fromValue(String value) {
    for (final item in SsisLogLocationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SsisLogLocationType value: $value');
  }
}
