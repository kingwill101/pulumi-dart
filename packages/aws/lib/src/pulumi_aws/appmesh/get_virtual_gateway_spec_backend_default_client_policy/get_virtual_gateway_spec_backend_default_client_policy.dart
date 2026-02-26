// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl/get_virtual_gateway_spec_backend_default_client_policy_tl.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicy {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTl> tls;

  GetVirtualGatewaySpecBackendDefaultClientPolicy({
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tls'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTl,
        Map<String, dynamic>>(tls, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicy(
      tls: Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTl>(
          map['tls'],
          (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTl.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
