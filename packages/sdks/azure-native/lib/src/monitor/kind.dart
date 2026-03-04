/// Indicates the type of scheduled query rule. The default is LogAlert.
enum Kind {
  valueLogAlert("LogAlert"),
  valueSimpleLogAlert("SimpleLogAlert"),
  valueLogToMetric("LogToMetric");

  const Kind(this.wireValue);
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
