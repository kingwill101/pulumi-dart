// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OpenAPI properties of Spring Cloud Gateway route config.
class GatewayRouteConfigOpenApiPropertiesResponse {
  /// The URI of OpenAPI specification.
  final pulumi.Input<String>? uri;

  /// Creates a new [GatewayRouteConfigOpenApiPropertiesResponse].
  /// [uri] The URI of OpenAPI specification.
  GatewayRouteConfigOpenApiPropertiesResponse({this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uri': ?uri};
  }

  factory GatewayRouteConfigOpenApiPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayRouteConfigOpenApiPropertiesResponse(
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
