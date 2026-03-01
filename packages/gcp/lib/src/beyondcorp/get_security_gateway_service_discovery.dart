// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_service_discovery_api_gateway.dart';

class GetSecurityGatewayServiceDiscovery {
  /// External API configuration.
  final List<GetSecurityGatewayServiceDiscoveryApiGateway> apiGateways;

  /// Creates a new [GetSecurityGatewayServiceDiscovery].
  /// [apiGateways] External API configuration.
  GetSecurityGatewayServiceDiscovery({required this.apiGateways});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiGateways':
          pulumi.Input.encodeList<
            GetSecurityGatewayServiceDiscoveryApiGateway,
            Map<String, dynamic>
          >(apiGateways, (value) => value.toMap()),
    };
  }

  factory GetSecurityGatewayServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayServiceDiscovery(
      apiGateways:
          pulumi.Input.decodeList<GetSecurityGatewayServiceDiscoveryApiGateway>(
            map['apiGateways'],
            (value) => GetSecurityGatewayServiceDiscoveryApiGateway.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
