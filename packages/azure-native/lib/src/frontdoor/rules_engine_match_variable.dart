/// Match Variable
enum RulesEngineMatchVariable {
  valueIsMobile("IsMobile"),
  valueRemoteAddr("RemoteAddr"),
  valueRequestMethod("RequestMethod"),
  valueQueryString("QueryString"),
  valuePostArgs("PostArgs"),
  valueRequestUri("RequestUri"),
  valueRequestPath("RequestPath"),
  valueRequestFilename("RequestFilename"),
  valueRequestFilenameExtension("RequestFilenameExtension"),
  valueRequestHeader("RequestHeader"),
  valueRequestBody("RequestBody"),
  valueRequestScheme("RequestScheme");

  const RulesEngineMatchVariable(this.value);
  final String value;

  static RulesEngineMatchVariable fromValue(String value) {
    for (final item in RulesEngineMatchVariable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RulesEngineMatchVariable value: $value');
  }
}

