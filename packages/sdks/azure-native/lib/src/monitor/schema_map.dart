// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_map.dart';
import 'resource_map.dart';
import 'scope_map.dart';

/// Schema map for azure monitor for logs.
class SchemaMap {
  /// Record Map.
  final pulumi.Input<List<RecordMap>> recordMap;

  /// Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  final pulumi.Input<List<ResourceMap>>? resourceMap;

  /// A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  final pulumi.Input<List<ScopeMap>>? scopeMap;

  /// Creates a new [SchemaMap].
  /// [recordMap] Record Map.
  /// [resourceMap] Resource Map captures information about the entity for which telemetry is recorded. For example, metrics exposed by a Kubernetes container can be linked to a resource that specifies the cluster, namespace, pod, and container name.Resource may capture an entire hierarchy of entity identification. It may describe the host in the cloud and specific container or an application running in the process.
  /// [scopeMap] A scope map is a logical unit of the application code with which the emitted telemetry can be associated.
  SchemaMap({required this.recordMap, this.resourceMap, this.scopeMap});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordMap':
          pulumi
              .Input.mapInputValue<List<RecordMap>, List<Map<String, dynamic>>>(
            recordMap,
            (value) => pulumi.Input.encodeList<RecordMap, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'resourceMap':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceMap>,
            List<Map<String, dynamic>>
          >(
            resourceMap,
            (value) =>
                pulumi.Input.encodeList<ResourceMap, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'scopeMap':
          ?pulumi.Input.mapOptionalInputValue<
            List<ScopeMap>,
            List<Map<String, dynamic>>
          >(
            scopeMap,
            (value) => pulumi.Input.encodeList<ScopeMap, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory SchemaMap.fromMap(Map<String, dynamic> map) {
    return SchemaMap(
      recordMap: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RecordMap>(
          map['recordMap']!,
          (value) => RecordMap.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      resourceMap: (() {
        final guardedValue = map['resourceMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceMap>(
            guardedValue,
            (value) =>
                ResourceMap.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      scopeMap: (() {
        final guardedValue = map['scopeMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ScopeMap>(
            guardedValue,
            (value) => ScopeMap.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
