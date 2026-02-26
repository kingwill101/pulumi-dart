// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy/get_virtual_gateway_spec_backend_default_client_policy.dart';

class GetVirtualGatewaySpecBackendDefault {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicy> clientPolicies;

  GetVirtualGatewaySpecBackendDefault({
    required this.clientPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientPolicies'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicy,
        Map<String, dynamic>>(clientPolicies, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefault.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefault(
      clientPolicies:
          Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicy>(
              map['clientPolicies'],
              (value) =>
                  GetVirtualGatewaySpecBackendDefaultClientPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
