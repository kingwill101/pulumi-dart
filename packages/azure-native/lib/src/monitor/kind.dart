/// Indicates the type of scheduled query rule. The default is LogAlert.
enum Kind {
  valueLogAlert("LogAlert"),
  valueSimpleLogAlert("SimpleLogAlert"),
  valueLogToMetric("LogToMetric");

  const Kind(this.value);
  final String value;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}

