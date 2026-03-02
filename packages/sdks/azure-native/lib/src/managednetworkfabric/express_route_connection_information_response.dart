// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ExpressRoute circuit ID and the Auth Key are required for you to successfully deploy NFC service.
class ExpressRouteConnectionInformationResponse {
  /// Authorization key for the circuit, must be of type Microsoft.Network/expressRouteCircuits/authorizations. The Auth Key is a mandatory attribute.
  final pulumi.Input<String> expressRouteAuthorizationKey;
  /// The express route circuit Azure resource ID, must be of type Microsoft.Network/expressRouteCircuits/circuitName. The ExpressRoute Circuit is a mandatory attribute.
  final pulumi.Input<String> expressRouteCircuitId;

  /// Creates a new [ExpressRouteConnectionInformationResponse].
  /// [expressRouteAuthorizationKey] Authorization key for the circuit, must be of type Microsoft.Network/expressRouteCircuits/authorizations. The Auth Key is a mandatory attribute.
  /// [expressRouteCircuitId] The express route circuit Azure resource ID, must be of type Microsoft.Network/expressRouteCircuits/circuitName. The ExpressRoute Circuit is a mandatory attribute.
  ExpressRouteConnectionInformationResponse({
    required this.expressRouteAuthorizationKey,
    required this.expressRouteCircuitId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressRouteAuthorizationKey': expressRouteAuthorizationKey,
      'expressRouteCircuitId': expressRouteCircuitId,
    };
  }

  factory ExpressRouteConnectionInformationResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionInformationResponse(
      expressRouteAuthorizationKey: (map['expressRouteAuthorizationKey'] as String).input(),
      expressRouteCircuitId: (map['expressRouteCircuitId'] as String).input(),
    );
  }
}

