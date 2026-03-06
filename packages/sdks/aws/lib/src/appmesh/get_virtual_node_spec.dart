// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend.dart';
import 'get_virtual_node_spec_backend_default.dart';
import 'get_virtual_node_spec_listener.dart';
import 'get_virtual_node_spec_logging.dart';
import 'get_virtual_node_spec_service_discovery.dart';

class GetVirtualNodeSpec {
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefault>> backendDefaults;
  final pulumi.Input<List<GetVirtualNodeSpecBackend>> backends;
  final pulumi.Input<List<GetVirtualNodeSpecListener>> listeners;
  final pulumi.Input<List<GetVirtualNodeSpecLogging>> loggings;
  final pulumi.Input<List<GetVirtualNodeSpecServiceDiscovery>> serviceDiscoveries;

  /// Creates a new [GetVirtualNodeSpec].
  /// [backendDefaults] Required.
  /// [backends] Required.
  /// [listeners] Required.
  /// [loggings] Required.
  /// [serviceDiscoveries] Required.
  const GetVirtualNodeSpec({
    required this.backendDefaults,
    required this.backends,
    required this.listeners,
    required this.loggings,
    required this.serviceDiscoveries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendDefaults': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefault>, List<Map<String, dynamic>>>(backendDefaults, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefault, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backends': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackend>, List<Map<String, dynamic>>>(backends, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackend, Map<String, dynamic>>(value, (value) => value.toMap())),
      'listeners': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggings': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecLogging>, List<Map<String, dynamic>>>(loggings, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecLogging, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceDiscoveries': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecServiceDiscovery>, List<Map<String, dynamic>>>(serviceDiscoveries, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecServiceDiscovery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpec.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpec(
      backendDefaults: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefault>(map['backendDefaults']!, (value) => GetVirtualNodeSpecBackendDefault.fromMap((value as Map).cast<String, dynamic>()))),
      backends: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackend>(map['backends']!, (value) => GetVirtualNodeSpecBackend.fromMap((value as Map).cast<String, dynamic>()))),
      listeners: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListener>(map['listeners']!, (value) => GetVirtualNodeSpecListener.fromMap((value as Map).cast<String, dynamic>()))),
      loggings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecLogging>(map['loggings']!, (value) => GetVirtualNodeSpecLogging.fromMap((value as Map).cast<String, dynamic>()))),
      serviceDiscoveries: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscovery>(map['serviceDiscoveries']!, (value) => GetVirtualNodeSpecServiceDiscovery.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

