// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_backend_defaults_client_policy.dart';

class VirtualGatewaySpecBackendDefaults {
  /// Default client policy for virtual gateway backends.
  final VirtualGatewaySpecBackendDefaultsClientPolicy? clientPolicy;

  /// Creates a new [VirtualGatewaySpecBackendDefaults].
  /// [clientPolicy] Default client policy for virtual gateway backends.
  VirtualGatewaySpecBackendDefaults({
    this.clientPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientPolicyValue = clientPolicy;
    if (clientPolicyValue != null) {
      map['clientPolicy'] = clientPolicyValue.toMap();
    }
    return map;
  }

  factory VirtualGatewaySpecBackendDefaults.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaults(
      clientPolicy: map['clientPolicy'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicy.fromMap(
              (map['clientPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
