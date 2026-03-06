// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'k8s_resource_requirements_response.dart';

/// The kubernetes scheduling options. It describes restrictions used to help Kubernetes select appropriate nodes to host the database service
class K8sSchedulingOptionsResponse {
  /// The kubernetes resource limits and requests used to restrict or reserve resource usage.
  final pulumi.Input<K8sResourceRequirementsResponse>? resources;

  /// Creates a new [K8sSchedulingOptionsResponse].
  /// [resources] The kubernetes resource limits and requests used to restrict or reserve resource usage.
  const K8sSchedulingOptionsResponse({
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resources': ?pulumi.Input.mapOptionalInputValue<K8sResourceRequirementsResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
    };
  }

  factory K8sSchedulingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return K8sSchedulingOptionsResponse(
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(K8sResourceRequirementsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

