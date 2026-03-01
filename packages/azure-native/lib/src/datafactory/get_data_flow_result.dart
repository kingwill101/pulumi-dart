// ignore_for_file: unused_element, unnecessary_cast

import 'flowlet_response.dart';

/// Result data returned by getDataFlow.
class GetDataFlowResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Etag identifies change in the resource.
  final String etag;
  /// The resource identifier.
  final String id;
  /// The resource name.
  final String name;
  /// Data flow properties.
  final FlowletResponse properties;
  /// The resource type.
  final String type;

  /// Creates a new [GetDataFlowResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Etag identifies change in the resource.
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [properties] Data flow properties.
  /// [type] The resource type.
  GetDataFlowResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetDataFlowResult.fromMap(Map<String, dynamic> map) {
    return GetDataFlowResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: FlowletResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

