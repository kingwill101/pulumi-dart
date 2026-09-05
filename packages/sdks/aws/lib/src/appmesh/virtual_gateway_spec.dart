// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults.dart';
import 'virtual_gateway_spec_listener.dart';
import 'virtual_gateway_spec_logging.dart';

class VirtualGatewaySpec {
  /// Defaults for backends. See `backendDefaults` Block for details.
  final pulumi.Input<VirtualGatewaySpecBackendDefaults?>? backendDefaults;
  /// Listeners that the mesh endpoint is expected to receive inbound traffic from. You can specify one listener. See `listener` Block for details.
  final pulumi.Input<List<VirtualGatewaySpecListener>> listeners;
  /// Inbound and outbound access logging information for the virtual gateway. See `logging` Block for details.
  final pulumi.Input<VirtualGatewaySpecLogging?>? logging;

  /// Creates a new [VirtualGatewaySpec].
  /// [backendDefaults] Defaults for backends. See `backendDefaults` Block for details.
  /// [listeners] Listeners that the mesh endpoint is expected to receive inbound traffic from. You can specify one listener. See `listener` Block for details.
  /// [logging] Inbound and outbound access logging information for the virtual gateway. See `logging` Block for details.
  const VirtualGatewaySpec({
    this.backendDefaults,
    required this.listeners,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendDefaults': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaults, Map<String, dynamic>>(backendDefaults, (value) => value.toMap()),
      'listeners': pulumi.Input.mapInputValue<List<VirtualGatewaySpecListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<VirtualGatewaySpecListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logging': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpec.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpec(
      backendDefaults: (() { final guardedValue = map['backendDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listeners: pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualGatewaySpecListener>(map['listeners']!, (value) => VirtualGatewaySpecListener.fromMap((value as Map).cast<String, dynamic>()))),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
