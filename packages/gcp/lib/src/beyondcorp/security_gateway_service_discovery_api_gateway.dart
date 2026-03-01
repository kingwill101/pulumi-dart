// ignore_for_file: unused_element, unnecessary_cast

import 'security_gateway_service_discovery_api_gateway_resource_override.dart';

class SecurityGatewayServiceDiscoveryApiGateway {
  /// Enables fetching resource model updates to alter service behavior per Chrome profile.
  /// Structure is documented below.
  final SecurityGatewayServiceDiscoveryApiGatewayResourceOverride?
  resourceOverride;

  /// Creates a new [SecurityGatewayServiceDiscoveryApiGateway].
  /// [resourceOverride] Enables fetching resource model updates to alter service behavior per Chrome profile.
  SecurityGatewayServiceDiscoveryApiGateway({this.resourceOverride});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceOverride': ?resourceOverride == null
          ? null
          : resourceOverride!.toMap(),
    };
  }

  factory SecurityGatewayServiceDiscoveryApiGateway.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityGatewayServiceDiscoveryApiGateway(
      resourceOverride: map['resourceOverride'] == null
          ? null
          : SecurityGatewayServiceDiscoveryApiGatewayResourceOverride.fromMap(
              (map['resourceOverride'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
