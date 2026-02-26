// ignore_for_file: unused_element, unnecessary_cast

import 'service_mesh_analysis_message_base_response.dart';

/// AnalysisMessage is a single message produced by an analyzer, and it used to communicate to the end user about the state of their Service Mesh configuration.
class ServiceMeshAnalysisMessageResponse {
  /// A UI can combine these args with a template (based on message_base.type) to produce an internationalized message.
  final Map<String, String> args;

  /// A human readable description of what the error means. It is suitable for non-internationalize display purposes.
  final String description;

  /// Details common to all types of Istio and ServiceMesh analysis messages.
  final ServiceMeshAnalysisMessageBaseResponse messageBase;

  /// A list of strings specifying the resource identifiers that were the cause of message generation. A "path" here may be: * MEMBERSHIP_ID if the cause is a specific member cluster * MEMBERSHIP_ID/(NAMESPACE\/)?RESOURCETYPE/NAME if the cause is a resource in a cluster
  final List<String> resourcePaths;

  ServiceMeshAnalysisMessageResponse({
    required this.args,
    required this.description,
    required this.messageBase,
    required this.resourcePaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['args'] = args;
    map['description'] = description;
    map['messageBase'] = messageBase.toMap();
    map['resourcePaths'] = resourcePaths;
    return map;
  }

  factory ServiceMeshAnalysisMessageResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshAnalysisMessageResponse(
      args: (map['args'] as Map).cast<String, String>(),
      description: map['description'] as String,
      messageBase: ServiceMeshAnalysisMessageBaseResponse.fromMap(
          (map['messageBase'] as Map).cast<String, dynamic>()),
      resourcePaths: (map['resourcePaths'] as List).cast<String>(),
    );
  }
}
