// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMeshIstioService.
class GetMeshIstioServiceArgs {
  /// Identifier for the mesh in which this Istio service is defined.
  /// Corresponds to the meshUid metric label in Istio metrics.
  final pulumi.Input<String> meshUid;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the Istio service underlying this service.
  /// Corresponds to the destination_service_name metric label in Istio metrics.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final pulumi.Input<String> serviceName;

  /// The namespace of the Istio service underlying this service.
  /// Corresponds to the destination_service_namespace metric label in Istio metrics.
  final pulumi.Input<String> serviceNamespace;

  GetMeshIstioServiceArgs({
    required this.meshUid,
    this.project,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['meshUid'] = meshUid;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceName'] = serviceName;
    map['serviceNamespace'] = serviceNamespace;
    return map;
  }

  factory GetMeshIstioServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshIstioServiceArgs(
      meshUid: pulumi.Input.asInput<String>(map['meshUid']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      serviceNamespace: pulumi.Input.asInput<String>(map['serviceNamespace']),
    );
  }
}
