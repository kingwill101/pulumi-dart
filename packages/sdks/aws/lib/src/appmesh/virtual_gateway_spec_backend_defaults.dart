// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy.dart';

class VirtualGatewaySpecBackendDefaults {
  /// Default client policy for virtual gateway backends. See `clientPolicy` Block for details.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicy>? clientPolicy;

  /// Creates a new [VirtualGatewaySpecBackendDefaults].
  /// [clientPolicy] Default client policy for virtual gateway backends. See `clientPolicy` Block for details.
  const VirtualGatewaySpecBackendDefaults({
    this.clientPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicy, Map<String, dynamic>>(clientPolicy, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaults.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaults(
      clientPolicy: (() { final guardedValue = map['clientPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
