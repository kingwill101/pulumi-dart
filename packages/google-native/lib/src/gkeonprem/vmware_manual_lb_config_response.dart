// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration parameters for an already existing manual load balancer. Given the nature of manual load balancers it is expected that said load balancer will be fully managed by users. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update ManualLB configurations it can only bind a pre-existing configuration to a new VMware user cluster.
class VmwareManualLbConfigResponse {
  /// NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  final int controlPlaneNodePort;

  /// NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  final int ingressHttpNodePort;

  /// NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  final int ingressHttpsNodePort;

  /// NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  final int konnectivityServerNodePort;

  /// Creates a new [VmwareManualLbConfigResponse].
  /// [controlPlaneNodePort] NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  /// [ingressHttpNodePort] NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  /// [ingressHttpsNodePort] NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  /// [konnectivityServerNodePort] NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  VmwareManualLbConfigResponse({
    required this.controlPlaneNodePort,
    required this.ingressHttpNodePort,
    required this.ingressHttpsNodePort,
    required this.konnectivityServerNodePort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneNodePort'] = controlPlaneNodePort;
    map['ingressHttpNodePort'] = ingressHttpNodePort;
    map['ingressHttpsNodePort'] = ingressHttpsNodePort;
    map['konnectivityServerNodePort'] = konnectivityServerNodePort;
    return map;
  }

  factory VmwareManualLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareManualLbConfigResponse(
      controlPlaneNodePort: map['controlPlaneNodePort'] as int,
      ingressHttpNodePort: map['ingressHttpNodePort'] as int,
      ingressHttpsNodePort: map['ingressHttpsNodePort'] as int,
      konnectivityServerNodePort: map['konnectivityServerNodePort'] as int,
    );
  }
}
