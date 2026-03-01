/// Type of response errors for real user requests for which origin will be deemed unhealthy
enum ResponseBasedDetectedErrorTypes {
  valueNone("None"),
  valueTcpErrorsOnly("TcpErrorsOnly"),
  valueTcpAndHttpErrors("TcpAndHttpErrors");

  const ResponseBasedDetectedErrorTypes(this.value);
  final String value;

  static ResponseBasedDetectedErrorTypes fromValue(String value) {
    for (final item in ResponseBasedDetectedErrorTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponseBasedDetectedErrorTypes value: $value');
  }
}

