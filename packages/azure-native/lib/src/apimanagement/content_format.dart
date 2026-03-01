/// Format of the Content in which the API is getting imported.
enum ContentFormat {
  valueWadlXml("wadl-xml"),
  valueWadlLinkJson("wadl-link-json"),
  valueSwaggerJson("swagger-json"),
  valueSwaggerLinkJson("swagger-link-json"),
  valueWsdl("wsdl"),
  valueWsdlLink("wsdl-link"),
  valueOpenapi("openapi"),
  valueOpenapiJson("openapi+json"),
  valueOpenapiLink("openapi-link"),
  valueOpenapiJsonLink("openapi+json-link"),
  valueGraphqlLink("graphql-link");

  const ContentFormat(this.value);
  final String value;

  static ContentFormat fromValue(String value) {
    for (final item in ContentFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentFormat value: $value');
  }
}

