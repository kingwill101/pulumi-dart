// ignore_for_file: unused_element, unnecessary_cast


/// OpenAPI properties of Spring Cloud Gateway route config.
class GatewayRouteConfigOpenApiProperties {
  /// The URI of OpenAPI specification.
  final String? uri;

  /// Creates a new [GatewayRouteConfigOpenApiProperties].
  /// [uri] The URI of OpenAPI specification.
  GatewayRouteConfigOpenApiProperties({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory GatewayRouteConfigOpenApiProperties.fromMap(Map<String, dynamic> map) {
    return GatewayRouteConfigOpenApiProperties(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

