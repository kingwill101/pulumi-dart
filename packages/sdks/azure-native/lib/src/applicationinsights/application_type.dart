/// Type of application being monitored.
enum ApplicationType {
  valueWeb("web"),
  valueOther("other");

  const ApplicationType(this.wireValue);
  final String wireValue;

  static ApplicationType fromValue(String value) {
    for (final item in ApplicationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationType value: $value');
  }
}
