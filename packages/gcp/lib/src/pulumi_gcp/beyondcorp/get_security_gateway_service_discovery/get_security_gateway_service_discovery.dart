// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_gateway_service_discovery_api_gateway/get_security_gateway_service_discovery_api_gateway.dart';

class GetSecurityGatewayServiceDiscovery {
  /// External API configuration.
  final List<GetSecurityGatewayServiceDiscoveryApiGateway> apiGateways;

  GetSecurityGatewayServiceDiscovery({
    required this.apiGateways,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiGateways'] = Input.encodeList<
        GetSecurityGatewayServiceDiscoveryApiGateway,
        Map<String, dynamic>>(apiGateways, (value) => value.toMap());
    return map;
  }

  factory GetSecurityGatewayServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayServiceDiscovery(
      apiGateways:
          Input.decodeList<GetSecurityGatewayServiceDiscoveryApiGateway>(
              map['apiGateways'],
              (value) => GetSecurityGatewayServiceDiscoveryApiGateway.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
