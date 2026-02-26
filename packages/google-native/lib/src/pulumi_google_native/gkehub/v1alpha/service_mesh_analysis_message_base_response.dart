// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_type_response.dart';

/// AnalysisMessageBase describes some common information that is needed for all messages.
class ServiceMeshAnalysisMessageBaseResponse {
  /// A url pointing to the Service Mesh or Istio documentation for this specific error type.
  final String documentationUrl;

  /// Represents how severe a message is.
  final String level;

  /// Represents the specific type of a message.
  final ServiceMeshTypeResponse type;

  ServiceMeshAnalysisMessageBaseResponse({
    required this.documentationUrl,
    required this.level,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['documentationUrl'] = documentationUrl;
    map['level'] = level;
    map['type'] = type.toMap();
    return map;
  }

  factory ServiceMeshAnalysisMessageBaseResponse.fromMap(
      Map<String, dynamic> map) {
    return ServiceMeshAnalysisMessageBaseResponse(
      documentationUrl: map['documentationUrl'] as String,
      level: map['level'] as String,
      type: ServiceMeshTypeResponse.fromMap(
          (map['type'] as Map).cast<String, dynamic>()),
    );
  }
}
