// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy_tls.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicy {
  /// Transport Layer Security (TLS) client policy.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTls>? tls;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicy].
  /// [tls] Transport Layer Security (TLS) client policy.
  VirtualGatewaySpecBackendDefaultsClientPolicy({
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicy.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicy(
      tls: map['tls'] == null ? null : ((VirtualGatewaySpecBackendDefaultsClientPolicyTls.fromMap((map['tls']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

