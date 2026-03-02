// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend.dart';
import 'virtual_node_spec_backend_defaults.dart';
import 'virtual_node_spec_listener.dart';
import 'virtual_node_spec_logging.dart';
import 'virtual_node_spec_service_discovery.dart';

class VirtualNodeSpec {
  /// Defaults for backends.
  final pulumi.Input<VirtualNodeSpecBackendDefaults>? backendDefaults;
  /// Backends to which the virtual node is expected to send outbound traffic.
  final pulumi.Input<List<VirtualNodeSpecBackend>>? backends;
  /// Listeners from which the virtual node is expected to receive inbound traffic.
  final pulumi.Input<List<VirtualNodeSpecListener>>? listeners;
  /// Inbound and outbound access logging information for the virtual node.
  final pulumi.Input<VirtualNodeSpecLogging>? logging;
  /// Service discovery information for the virtual node.
  final pulumi.Input<VirtualNodeSpecServiceDiscovery>? serviceDiscovery;

  /// Creates a new [VirtualNodeSpec].
  /// [backendDefaults] Defaults for backends.
  /// [backends] Backends to which the virtual node is expected to send outbound traffic.
  /// [listeners] Listeners from which the virtual node is expected to receive inbound traffic.
  /// [logging] Inbound and outbound access logging information for the virtual node.
  /// [serviceDiscovery] Service discovery information for the virtual node.
  VirtualNodeSpec({
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
      backendDefaults: map['backendDefaults'] == null ? null : ((VirtualNodeSpecBackendDefaults.fromMap((map['backendDefaults']! as Map).cast<String, dynamic>())).input()).input(),
      backends: map['backends'] == null ? null : ((pulumi.Input.decodeList<VirtualNodeSpecBackend>(map['backends']!, (value) => VirtualNodeSpecBackend.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      listeners: map['listeners'] == null ? null : ((pulumi.Input.decodeList<VirtualNodeSpecListener>(map['listeners']!, (value) => VirtualNodeSpecListener.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      logging: map['logging'] == null ? null : ((VirtualNodeSpecLogging.fromMap((map['logging']! as Map).cast<String, dynamic>())).input()).input(),
      serviceDiscovery: map['serviceDiscovery'] == null ? null : ((VirtualNodeSpecServiceDiscovery.fromMap((map['serviceDiscovery']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

