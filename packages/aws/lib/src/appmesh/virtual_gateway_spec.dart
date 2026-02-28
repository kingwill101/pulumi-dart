// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults.dart';
import 'virtual_gateway_spec_listener.dart';
import 'virtual_gateway_spec_logging.dart';

class VirtualGatewaySpec {
  /// Defaults for backends.
  final VirtualGatewaySpecBackendDefaults? backendDefaults;

  /// Listeners that the mesh endpoint is expected to receive inbound traffic from. You can specify one listener.
  final List<VirtualGatewaySpecListener> listeners;

  /// Inbound and outbound access logging information for the virtual gateway.
  final VirtualGatewaySpecLogging? logging;

  /// Creates a new [VirtualGatewaySpec].
  /// [backendDefaults] Defaults for backends.
  /// [listeners] Listeners that the mesh endpoint is expected to receive inbound traffic from. You can specify one listener.
  /// [logging] Inbound and outbound access logging information for the virtual gateway.
  VirtualGatewaySpec({
    this.backendDefaults,
    required this.listeners,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendDefaultsValue = backendDefaults;
    if (backendDefaultsValue != null) {
      map['backendDefaults'] = backendDefaultsValue.toMap();
    }
    map['listeners'] = pulumi.Input.encodeList<VirtualGatewaySpecListener,
        Map<String, dynamic>>(listeners, (value) => value.toMap());
    final loggingValue = logging;
    if (loggingValue != null) {
      map['logging'] = loggingValue.toMap();
    }
    return map;
  }

  factory VirtualGatewaySpec.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpec(
      backendDefaults: map['backendDefaults'] == null
          ? null
          : VirtualGatewaySpecBackendDefaults.fromMap(
              (map['backendDefaults'] as Map).cast<String, dynamic>()),
      listeners: pulumi.Input.decodeList<VirtualGatewaySpecListener>(
          map['listeners'],
          (value) => VirtualGatewaySpecListener.fromMap(
              (value as Map).cast<String, dynamic>())),
      logging: map['logging'] == null
          ? null
          : VirtualGatewaySpecLogging.fromMap(
              (map['logging'] as Map).cast<String, dynamic>()),
    );
  }
}
