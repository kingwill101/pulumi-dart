// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_connection_response_properties.dart';
import 'system_data_response.dart';

/// Connection body inside a pipeline
class PipelineConnectionResponse {
  /// Connection etag inside pipeline
  final pulumi.Input<String> etag;
  /// Connection id inside pipeline
  final pulumi.Input<String> id;
  /// Connection location inside pipeline
  final pulumi.Input<String> location;
  /// Connection name inside pipeline
  final pulumi.Input<String> name;
  /// Connection properties inside pipeline
  final pulumi.Input<PipelineConnectionResponseProperties>? properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Connection type inside pipeline
  final pulumi.Input<String> type;

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
      'properties': ?pulumi.Input.mapOptionalInputValue<PipelineConnectionResponseProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PipelineConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PipelineConnectionResponse(
      etag: (map['etag'] as String).input(),
      id: (map['id'] as String).input(),
      location: (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      properties: map['properties'] == null ? null : (PipelineConnectionResponseProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

