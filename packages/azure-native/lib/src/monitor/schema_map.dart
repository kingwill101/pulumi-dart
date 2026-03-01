// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_map.dart';
import 'resource_map.dart';
import 'scope_map.dart';

/// Schema map for azure monitor for logs.
class SchemaMap {
  /// Record Map.
  final List<RecordMap> recordMap;
  /// Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  final List<ResourceMap>? resourceMap;
  /// A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  final List<ScopeMap>? scopeMap;

  /// Creates a new [SchemaMap].
  /// [recordMap] Record Map.
  /// [resourceMap] Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  /// [scopeMap] A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  SchemaMap({
    required this.recordMap,
    this.resourceMap,
    this.scopeMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordMap': pulumi.Input.encodeList<RecordMap, Map<String, dynamic>>(recordMap, (value) => value.toMap()),
      'resourceMap': ?resourceMap == null ? null : pulumi.Input.encodeList<ResourceMap, Map<String, dynamic>>(resourceMap!, (value) => value.toMap()),
      'scopeMap': ?scopeMap == null ? null : pulumi.Input.encodeList<ScopeMap, Map<String, dynamic>>(scopeMap!, (value) => value.toMap()),
    };
  }

  factory SchemaMap.fromMap(Map<String, dynamic> map) {
    return SchemaMap(
      recordMap: pulumi.Input.decodeList<RecordMap>(map['recordMap'], (value) => RecordMap.fromMap((value as Map).cast<String, dynamic>())),
      resourceMap: map['resourceMap'] == null ? null : pulumi.Input.decodeList<ResourceMap>(map['resourceMap'], (value) => ResourceMap.fromMap((value as Map).cast<String, dynamic>())),
      scopeMap: map['scopeMap'] == null ? null : pulumi.Input.decodeList<ScopeMap>(map['scopeMap'], (value) => ScopeMap.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

