// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_connection_response_properties.dart';
import 'system_data_response.dart';

/// Connection body inside a pipeline
class PipelineConnectionResponse {
  /// Connection etag inside pipeline
  final String etag;
  /// Connection id inside pipeline
  final String id;
  /// Connection location inside pipeline
  final String location;
  /// Connection name inside pipeline
  final String name;
  /// Connection properties inside pipeline
  final PipelineConnectionResponseProperties? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Connection type inside pipeline
  final String type;

  /// Creates a new [PipelineConnectionResponse].
  /// [etag] Connection etag inside pipeline
  /// [id] Connection id inside pipeline
  /// [location] Connection location inside pipeline
  /// [name] Connection name inside pipeline
  /// [properties] Connection properties inside pipeline
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Connection type inside pipeline
  PipelineConnectionResponse({
    required this.etag,
    required this.id,
    required this.location,
    required this.name,
    this.properties,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': id,
      'location': location,
      'name': name,
      'properties': ?properties == null ? null : properties!.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory PipelineConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PipelineConnectionResponse(
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      properties: map['properties'] == null ? null : PipelineConnectionResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

