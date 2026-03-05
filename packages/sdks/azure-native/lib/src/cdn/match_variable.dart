/// The name of the condition for the delivery rule.
enum MatchVariable {
  remoteAddress("RemoteAddress"),
  requestMethod("RequestMethod"),
  queryString("QueryString"),
  postArgs("PostArgs"),
  requestUri("RequestUri"),
  requestHeader("RequestHeader"),
  requestBody("RequestBody"),
  requestScheme("RequestScheme"),
  urlPath("UrlPath"),
  urlFileExtension("UrlFileExtension"),
  urlFileName("UrlFileName"),
  httpVersion("HttpVersion"),
  cookies("Cookies"),
  isDevice("IsDevice"),
  socketAddr("SocketAddr"),
  clientPort("ClientPort"),
  serverPort("ServerPort"),
  hostName("HostName"),
  sslProtocol("SslProtocol");

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

