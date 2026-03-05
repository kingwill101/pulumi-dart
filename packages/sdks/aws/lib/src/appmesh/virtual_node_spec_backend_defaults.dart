// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy.dart';

class VirtualNodeSpecBackendDefaults {
  /// Default client policy for virtual service backends. See above for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicy>? clientPolicy;

  /// Creates a new [VirtualNodeSpecBackendDefaults].
  /// [clientPolicy] Default client policy for virtual service backends. See above for details.
  VirtualNodeSpecBackendDefaults({
    this.clientPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicy, Map<String, dynamic>>(clientPolicy, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaults.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaults(
      clientPolicy: (() { final guardedValue = map['clientPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

