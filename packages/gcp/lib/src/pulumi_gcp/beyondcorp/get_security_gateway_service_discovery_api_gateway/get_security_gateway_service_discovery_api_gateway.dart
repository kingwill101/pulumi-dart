// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_security_gateway_service_discovery_api_gateway_resource_override/get_security_gateway_service_discovery_api_gateway_resource_override.dart';

class GetSecurityGatewayServiceDiscoveryApiGateway {
  /// Enables fetching resource model updates to alter service behavior per Chrome profile.
  final List<GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride>
      resourceOverrides;

  GetSecurityGatewayServiceDiscoveryApiGateway({
    required this.resourceOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceOverrides'] = pulumi.Input.encodeList<
        GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride,
        Map<String, dynamic>>(resourceOverrides, (value) => value.toMap());
    return map;
  }

  factory GetSecurityGatewayServiceDiscoveryApiGateway.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityGatewayServiceDiscoveryApiGateway(
      resourceOverrides: pulumi.Input.decodeList<
              GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride>(
          map['resourceOverrides'],
          (value) =>
              GetSecurityGatewayServiceDiscoveryApiGatewayResourceOverride
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
