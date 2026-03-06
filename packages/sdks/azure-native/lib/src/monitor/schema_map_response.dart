// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_map_response.dart';
import 'resource_map_response.dart';
import 'scope_map_response.dart';

/// Schema map for azure monitor for logs.
class SchemaMapResponse {
  /// Record Map.
  final pulumi.Input<List<RecordMapResponse>> recordMap;
  /// Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  final pulumi.Input<List<ResourceMapResponse>>? resourceMap;
  /// A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  final pulumi.Input<List<ScopeMapResponse>>? scopeMap;

  /// Creates a new [SchemaMapResponse].
  /// [recordMap] Record Map.
  /// [resourceMap] Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  /// [scopeMap] A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  const SchemaMapResponse({
    required this.recordMap,
    this.resourceMap,
    this.scopeMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordMap': pulumi.Input.mapInputValue<List<RecordMapResponse>, List<Map<String, dynamic>>>(recordMap, (value) => pulumi.Input.encodeList<RecordMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceMap': ?pulumi.Input.mapOptionalInputValue<List<ResourceMapResponse>, List<Map<String, dynamic>>>(resourceMap, (value) => pulumi.Input.encodeList<ResourceMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopeMap': ?pulumi.Input.mapOptionalInputValue<List<ScopeMapResponse>, List<Map<String, dynamic>>>(scopeMap, (value) => pulumi.Input.encodeList<ScopeMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchemaMapResponse.fromMap(Map<String, dynamic> map) {
    return SchemaMapResponse(
      recordMap: pulumi.Input.fromValue(pulumi.Input.decodeList<RecordMapResponse>(map['recordMap']!, (value) => RecordMapResponse.fromMap((value as Map).cast<String, dynamic>()))),
      resourceMap: (() { final guardedValue = map['resourceMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceMapResponse>(guardedValue, (value) => ResourceMapResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopeMap: (() { final guardedValue = map['scopeMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScopeMapResponse>(guardedValue, (value) => ScopeMapResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

