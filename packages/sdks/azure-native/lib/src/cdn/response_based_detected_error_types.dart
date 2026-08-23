/// Type of response errors for real user requests for which origin will be deemed unhealthy
enum ResponseBasedDetectedErrorTypes {
  valueNone("None"),
  valueTcpErrorsOnly("TcpErrorsOnly"),
  valueTcpAndHttpErrors("TcpAndHttpErrors");

  const ResponseBasedDetectedErrorTypes(this.wireValue);
  final String wireValue;

  static ResponseBasedDetectedErrorTypes fromValue(String value) {
    for (final item in ResponseBasedDetectedErrorTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResponseBasedDetectedErrorTypes value: $value');
  }
}
