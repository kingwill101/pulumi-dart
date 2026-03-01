/// The format of the Operation Name for Application Insights telemetries. Default is Name.
enum OperationNameFormat {
  valueName("Name"),
  valueUrl("Url");

  const OperationNameFormat(this.value);
  final String value;

  static OperationNameFormat fromValue(String value) {
    for (final item in OperationNameFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperationNameFormat value: $value');
  }
}

