/// Request variable to compare with.
enum MatchVariable {
  remoteAddr("RemoteAddr"),
  requestMethod("RequestMethod"),
  queryString("QueryString"),
  postArgs("PostArgs"),
  requestUri("RequestUri"),
  requestHeader("RequestHeader"),
  requestBody("RequestBody"),
  cookies("Cookies"),
  socketAddr("SocketAddr"),
  jA4("JA4");

  const MatchVariable(this.wireValue);
  final String wireValue;

  static MatchVariable fromValue(String value) {
    for (final item in MatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchVariable value: $value');
  }
}
