// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_gateway_application_upstream_external_endpoint/security_gateway_application_upstream_external_endpoint.dart';

class SecurityGatewayApplicationUpstreamExternal {
  /// List of the endpoints to forward traffic to.
  /// Structure is documented below.
  final List<SecurityGatewayApplicationUpstreamExternalEndpoint> endpoints;

  SecurityGatewayApplicationUpstreamExternal({
    required this.endpoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endpoints'] = Input.encodeList<
        SecurityGatewayApplicationUpstreamExternalEndpoint,
        Map<String, dynamic>>(endpoints, (value) => value.toMap());
    return map;
  }

  factory SecurityGatewayApplicationUpstreamExternal.fromMap(
      Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamExternal(
      endpoints:
          Input.decodeList<SecurityGatewayApplicationUpstreamExternalEndpoint>(
              map['endpoints'],
              (value) =>
                  SecurityGatewayApplicationUpstreamExternalEndpoint.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
