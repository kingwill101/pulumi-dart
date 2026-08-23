/// The variable to be evaluated for excluding the request.
enum ExceptionMatchVariable {
  requestUri("RequestUri"),
  socketAddr("SocketAddr"),
  requestHeaderNames("RequestHeaderNames");

  const ExceptionMatchVariable(this.wireValue);
  final String wireValue;

  static ExceptionMatchVariable fromValue(String value) {
    for (final item in ExceptionMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExceptionMatchVariable value: $value');
  }
}
