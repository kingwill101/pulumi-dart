import 'package:pulumi/pulumi.dart' as pulumi;

/// Match variable to compare against.
enum WafMatchVariable implements pulumi.PulumiEnum<String> {
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
  @override
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
