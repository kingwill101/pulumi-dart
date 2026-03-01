// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_map_response.dart';
import 'resource_map_response.dart';
import 'scope_map_response.dart';

/// Schema map for azure monitor for logs.
class SchemaMapResponse {
  /// Record Map.
  final List<RecordMapResponse> recordMap;
  /// Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  final List<ResourceMapResponse>? resourceMap;
  /// A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  final List<ScopeMapResponse>? scopeMap;

  /// Creates a new [SchemaMapResponse].
  /// [recordMap] Record Map.
  /// [resourceMap] Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  /// [scopeMap] A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  SchemaMapResponse({
    required this.recordMap,
    this.resourceMap,
    this.scopeMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordMap': pulumi.Input.encodeList<RecordMapResponse, Map<String, dynamic>>(recordMap, (value) => value.toMap()),
      'resourceMap': ?resourceMap == null ? null : pulumi.Input.encodeList<ResourceMapResponse, Map<String, dynamic>>(resourceMap!, (value) => value.toMap()),
      'scopeMap': ?scopeMap == null ? null : pulumi.Input.encodeList<ScopeMapResponse, Map<String, dynamic>>(scopeMap!, (value) => value.toMap()),
    };
  }

  factory SchemaMapResponse.fromMap(Map<String, dynamic> map) {
    return SchemaMapResponse(
      recordMap: pulumi.Input.decodeList<RecordMapResponse>(map['recordMap'], (value) => RecordMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceMap: map['resourceMap'] == null ? null : pulumi.Input.decodeList<ResourceMapResponse>(map['resourceMap'], (value) => ResourceMapResponse.fromMap((value as Map).cast<String, dynamic>())),
      scopeMap: map['scopeMap'] == null ? null : pulumi.Input.decodeList<ScopeMapResponse>(map['scopeMap'], (value) => ScopeMapResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

