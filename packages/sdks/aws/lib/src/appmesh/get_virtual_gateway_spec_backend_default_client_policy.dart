// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicy {
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTl>> tls;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicy].
  /// [tls] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicy({
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTl>, List<Map<String, dynamic>>>(tls, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicy.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicy(
      tls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTl>(map['tls']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

