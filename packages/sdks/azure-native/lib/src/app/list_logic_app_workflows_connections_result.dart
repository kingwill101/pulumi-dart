// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_envelope_response_properties.dart';

/// Result data returned by listLogicAppWorkflowsConnections.
class ListLogicAppWorkflowsConnectionsResult {
  /// The resource id.
  final String id;
  /// The resource kind.
  final String? kind;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String name;
  /// Additional workflow properties.
  final WorkflowEnvelopeResponseProperties properties;
  /// Gets the resource type.
  final String type;

  /// Creates a new [ListLogicAppWorkflowsConnectionsResult].
  /// [id] The resource id.
  /// [kind] The resource kind.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [properties] Additional workflow properties.
  /// [type] Gets the resource type.
  ListLogicAppWorkflowsConnectionsResult({
    required this.id,
    this.kind,
    this.location,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory ListLogicAppWorkflowsConnectionsResult.fromMap(Map<String, dynamic> map) {
    return ListLogicAppWorkflowsConnectionsResult(
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      properties: WorkflowEnvelopeResponseProperties.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

