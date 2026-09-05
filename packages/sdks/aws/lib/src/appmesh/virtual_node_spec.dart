// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend.dart';
import 'virtual_node_spec_backend_defaults.dart';
import 'virtual_node_spec_listener.dart';
import 'virtual_node_spec_logging.dart';
import 'virtual_node_spec_service_discovery.dart';

class VirtualNodeSpec {
  /// Defaults for backends. See `spec.backend_defaults` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaults?>? backendDefaults;
  /// Backends to which the virtual node is expected to send outbound traffic. See `spec.backend` Block for details.
  final pulumi.Input<List<VirtualNodeSpecBackend>?>? backends;
  /// Listeners from which the virtual node is expected to receive inbound traffic. See `spec.listener` Block for details.
  final pulumi.Input<List<VirtualNodeSpecListener>?>? listeners;
  /// Inbound and outbound access logging information for the virtual node. See `spec.logging` Block for details.
  final pulumi.Input<VirtualNodeSpecLogging?>? logging;
  /// Service discovery information for the virtual node. See `spec.service_discovery` Block for details.
  final pulumi.Input<VirtualNodeSpecServiceDiscovery?>? serviceDiscovery;

  /// Creates a new [VirtualNodeSpec].
  /// [backendDefaults] Defaults for backends. See `spec.backend_defaults` Block for details.
  /// [backends] Backends to which the virtual node is expected to send outbound traffic. See `spec.backend` Block for details.
  /// [listeners] Listeners from which the virtual node is expected to receive inbound traffic. See `spec.listener` Block for details.
  /// [logging] Inbound and outbound access logging information for the virtual node. See `spec.logging` Block for details.
  /// [serviceDiscovery] Service discovery information for the virtual node. See `spec.service_discovery` Block for details.
  const VirtualNodeSpec({
    this.backendDefaults,
    this.backends,
    this.listeners,
    this.logging,
    this.serviceDiscovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendDefaults': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaults, Map<String, dynamic>>(backendDefaults, (value) => value.toMap()),
      'backends': ?pulumi.Input.mapOptionalInputValue<List<VirtualNodeSpecBackend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<VirtualNodeSpecBackend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<VirtualNodeSpecListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<VirtualNodeSpecListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logging': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
      'serviceDiscovery': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecServiceDiscovery, Map<String, dynamic>>(serviceDiscovery, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpec.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpec(
      backendDefaults: (() { final guardedValue = map['backendDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backends: (() { final guardedValue = map['backends']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNodeSpecBackend>(guardedValue, (value) => VirtualNodeSpecBackend.fromMap((value as Map).cast<String, dynamic>()))); })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNodeSpecListener>(guardedValue, (value) => VirtualNodeSpecListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceDiscovery: (() { final guardedValue = map['serviceDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecServiceDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
