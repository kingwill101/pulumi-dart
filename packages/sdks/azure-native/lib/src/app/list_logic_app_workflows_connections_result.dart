// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_envelope_response_properties.dart';

/// Result data returned by listLogicAppWorkflowsConnections.
class ListLogicAppWorkflowsConnectionsResult {
  /// The resource id.
  final String? id;
  /// The resource kind.
  final String? kind;
  /// The resource location.
  final String? location;
  /// Gets the resource name.
  final String? name;
  /// Additional workflow properties.
  final WorkflowEnvelopeResponseProperties? properties;
  /// Gets the resource type.
  final String? type;

  /// Creates a new [ListLogicAppWorkflowsConnectionsResult].
  /// [id] The resource id.
  /// [kind] The resource kind.
  /// [location] The resource location.
  /// [name] Gets the resource name.
  /// [properties] Additional workflow properties.
  /// [type] Gets the resource type.
  const ListLogicAppWorkflowsConnectionsResult({
    this.id,
    this.kind,
    this.location,
    this.name,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'type': ?type,
    };
  }

  factory ListLogicAppWorkflowsConnectionsResult.fromMap(Map<String, dynamic> map) {
    return ListLogicAppWorkflowsConnectionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return WorkflowEnvelopeResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
