/// Request variable to compare with.
enum MatchVariable {
  valueRemoteAddr("RemoteAddr"),
  valueRequestMethod("RequestMethod"),
  valueQueryString("QueryString"),
  valuePostArgs("PostArgs"),
  valueRequestUri("RequestUri"),
  valueRequestHeader("RequestHeader"),
  valueRequestBody("RequestBody"),
  valueCookies("Cookies"),
  valueSocketAddr("SocketAddr");

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

