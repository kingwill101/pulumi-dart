/// Type of application being monitored.
enum ApplicationType {
  valueWeb("web"),
  valueOther("other");

  const ApplicationType(this.value);
  final String value;

  static ApplicationType fromValue(String value) {
    for (final item in ApplicationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationType value: $value');
  }
}

