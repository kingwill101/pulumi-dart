// ignore_for_file: unused_element, unnecessary_cast

import 'security_gateway_service_discovery_api_gateway.dart';

class SecurityGatewayServiceDiscovery {
  /// External API configuration.
  /// Structure is documented below.
  final SecurityGatewayServiceDiscoveryApiGateway? apiGateway;

  /// Creates a new [SecurityGatewayServiceDiscovery].
  /// [apiGateway] External API configuration.
  SecurityGatewayServiceDiscovery({
    this.apiGateway,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGateway': ?apiGateway == null ? null : apiGateway!.toMap(),
    };
  }

  factory SecurityGatewayServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayServiceDiscovery(
      apiGateway: map['apiGateway'] == null ? null : SecurityGatewayServiceDiscoveryApiGateway.fromMap((map['apiGateway'] as Map).cast<String, dynamic>()),
    );
  }
}

