import 'package:pulumi/pulumi.dart' as pulumi;

/// Match Variable
enum RulesEngineMatchVariable implements pulumi.PulumiEnum<String> {
  isMobile("IsMobile"),
  remoteAddr("RemoteAddr"),
  requestMethod("RequestMethod"),
  queryString("QueryString"),
  postArgs("PostArgs"),
  requestUri("RequestUri"),
  requestPath("RequestPath"),
  requestFilename("RequestFilename"),
  requestFilenameExtension("RequestFilenameExtension"),
  requestHeader("RequestHeader"),
  requestBody("RequestBody"),
  requestScheme("RequestScheme");

  const RulesEngineMatchVariable(this.wireValue);
  @override
  final String wireValue;

  static RulesEngineMatchVariable fromValue(String value) {
    for (final item in RulesEngineMatchVariable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RulesEngineMatchVariable value: $value');
  }
}
