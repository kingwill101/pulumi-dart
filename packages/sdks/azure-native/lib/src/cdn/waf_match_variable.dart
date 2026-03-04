/// Match variable to compare against.
enum WafMatchVariable {
  remoteAddr("RemoteAddr"),
  socketAddr("SocketAddr"),
  requestMethod("RequestMethod"),
  requestHeader("RequestHeader"),
  requestUri("RequestUri"),
  queryString("QueryString"),
  requestBody("RequestBody"),
  cookies("Cookies"),
  postArgs("PostArgs");

  const WafMatchVariable(this.wireValue);
  final String wireValue;

  static WafMatchVariable fromValue(String value) {
    for (final item in WafMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WafMatchVariable value: $value');
  }
}
