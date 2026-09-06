import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the condition for the delivery rule.
enum MatchVariable implements pulumi.PulumiEnum<String> {
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
  @override
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
