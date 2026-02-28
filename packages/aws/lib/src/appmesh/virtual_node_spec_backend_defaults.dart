// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_defaults_client_policy.dart';

class VirtualNodeSpecBackendDefaults {
  /// Default client policy for virtual service backends. See above for details.
  final VirtualNodeSpecBackendDefaultsClientPolicy? clientPolicy;

  /// Creates a new [VirtualNodeSpecBackendDefaults].
  /// [clientPolicy] Default client policy for virtual service backends. See above for details.
  VirtualNodeSpecBackendDefaults({
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

  factory VirtualNodeSpecBackendDefaults.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaults(
      clientPolicy: map['clientPolicy'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicy.fromMap(
              (map['clientPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
