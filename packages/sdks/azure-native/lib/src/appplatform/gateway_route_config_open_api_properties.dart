// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OpenAPI properties of Spring Cloud Gateway route config.
class GatewayRouteConfigOpenApiProperties {
  /// The URI of OpenAPI specification.
  final pulumi.Input<String>? uri;

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
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

