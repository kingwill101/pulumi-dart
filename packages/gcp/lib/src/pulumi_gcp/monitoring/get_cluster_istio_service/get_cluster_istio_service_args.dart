// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getClusterIstioService.
class GetClusterIstioServiceArgs {
  /// The name of the Kubernetes cluster in which this Istio service
  /// is defined. Corresponds to the clusterName resource label in k8s_cluster resources.
  final Input<String> clusterName;

  /// The location of the Kubernetes cluster in which this Istio service
  /// is defined. Corresponds to the location resource label in k8s_cluster resources.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the Istio service underlying this service.
  /// Corresponds to the destination_service_name metric label in Istio metrics.
  ///
  /// - - -
  ///
  /// Other optional fields include:
  final Input<String> serviceName;

  /// The namespace of the Istio service underlying this service.
  /// Corresponds to the destination_service_namespace metric label in Istio metrics.
  final Input<String> serviceNamespace;

  GetClusterIstioServiceArgs({
    required this.clusterName,
    required this.location,
    this.project,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceName'] = serviceName;
    map['serviceNamespace'] = serviceNamespace;
    return map;
  }

  factory GetClusterIstioServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterIstioServiceArgs(
      clusterName: Input.asInput<String>(map['clusterName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceName: Input.asInput<String>(map['serviceName']),
      serviceNamespace: Input.asInput<String>(map['serviceNamespace']),
    );
  }
}
