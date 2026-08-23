/// Format of the Content in which the API is getting imported. New formats can be added in the future
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
  valueGraphqlLink("graphql-link"),
  valueOdata("odata"),
  valueOdataLink("odata-link"),
  valueGrpc("grpc"),
  valueGrpcLink("grpc-link");

  const ContentFormat(this.wireValue);
  final String wireValue;

  static ContentFormat fromValue(String value) {
    for (final item in ContentFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentFormat value: $value');
  }
}
