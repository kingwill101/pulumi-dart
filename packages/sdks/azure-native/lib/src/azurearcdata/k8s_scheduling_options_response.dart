// ignore_for_file: unused_element, unnecessary_cast

import 'k8s_resource_requirements_response.dart';

/// The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
class K8sSchedulingOptionsResponse {
  /// The kubernetes resource limits and requests used to restrict or reserve resource usage.
  final K8sResourceRequirementsResponse? resources;

  /// Creates a new [K8sSchedulingOptionsResponse].
  /// [resources] The kubernetes resource limits and requests used to restrict or reserve resource usage.
  K8sSchedulingOptionsResponse({
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': ?resources == null ? null : resources!.toMap(),
    };
  }

  factory K8sSchedulingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return K8sSchedulingOptionsResponse(
      resources: map['resources'] == null ? null : K8sResourceRequirementsResponse.fromMap((map['resources'] as Map).cast<String, dynamic>()),
    );
  }
}

