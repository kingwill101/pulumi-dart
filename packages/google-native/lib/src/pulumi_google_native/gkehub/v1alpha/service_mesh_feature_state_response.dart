// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'service_mesh_analysis_message_response.dart';

/// **Service Mesh**: State for the whole Hub, as analyzed by the Service Mesh Hub Controller.
class ServiceMeshFeatureStateResponse {
  /// Results of running Service Mesh analyzers.
  final List<ServiceMeshAnalysisMessageResponse> analysisMessages;

  ServiceMeshFeatureStateResponse({
    required this.analysisMessages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisMessages'] = Input.encodeList<
        ServiceMeshAnalysisMessageResponse,
        Map<String, dynamic>>(analysisMessages, (value) => value.toMap());
    return map;
  }

  factory ServiceMeshFeatureStateResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshFeatureStateResponse(
      analysisMessages: Input.decodeList<ServiceMeshAnalysisMessageResponse>(
          map['analysisMessages'],
          (value) => ServiceMeshAnalysisMessageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
