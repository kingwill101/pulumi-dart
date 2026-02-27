// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_backend/get_virtual_node_spec_backend.dart';
import '../get_virtual_node_spec_backend_default/get_virtual_node_spec_backend_default.dart';
import '../get_virtual_node_spec_listener/get_virtual_node_spec_listener.dart';
import '../get_virtual_node_spec_logging/get_virtual_node_spec_logging.dart';
import '../get_virtual_node_spec_service_discovery/get_virtual_node_spec_service_discovery.dart';

class GetVirtualNodeSpec {
  final List<GetVirtualNodeSpecBackendDefault> backendDefaults;
  final List<GetVirtualNodeSpecBackend> backends;
  final List<GetVirtualNodeSpecListener> listeners;
  final List<GetVirtualNodeSpecLogging> loggings;
  final List<GetVirtualNodeSpecServiceDiscovery> serviceDiscoveries;

  GetVirtualNodeSpec({
    required this.backendDefaults,
    required this.backends,
    required this.listeners,
    required this.loggings,
    required this.serviceDiscoveries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendDefaults'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefault,
        Map<String, dynamic>>(backendDefaults, (value) => value.toMap());
    map['backends'] = pulumi.Input.encodeList<GetVirtualNodeSpecBackend,
        Map<String, dynamic>>(backends, (value) => value.toMap());
    map['listeners'] = pulumi.Input.encodeList<GetVirtualNodeSpecListener,
        Map<String, dynamic>>(listeners, (value) => value.toMap());
    map['loggings'] = pulumi.Input.encodeList<GetVirtualNodeSpecLogging,
        Map<String, dynamic>>(loggings, (value) => value.toMap());
    map['serviceDiscoveries'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecServiceDiscovery,
        Map<String, dynamic>>(serviceDiscoveries, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpec(
      backendDefaults:
          pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefault>(
              map['backendDefaults'],
              (value) => GetVirtualNodeSpecBackendDefault.fromMap(
                  (value as Map).cast<String, dynamic>())),
      backends: pulumi.Input.decodeList<GetVirtualNodeSpecBackend>(
          map['backends'],
          (value) => GetVirtualNodeSpecBackend.fromMap(
              (value as Map).cast<String, dynamic>())),
      listeners: pulumi.Input.decodeList<GetVirtualNodeSpecListener>(
          map['listeners'],
          (value) => GetVirtualNodeSpecListener.fromMap(
              (value as Map).cast<String, dynamic>())),
      loggings: pulumi.Input.decodeList<GetVirtualNodeSpecLogging>(
          map['loggings'],
          (value) => GetVirtualNodeSpecLogging.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceDiscoveries:
          pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscovery>(
              map['serviceDiscoveries'],
              (value) => GetVirtualNodeSpecServiceDiscovery.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
