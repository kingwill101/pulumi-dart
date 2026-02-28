// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration parameters for an already existing manual load balancer. Given the nature of manual load balancers it is expected that said load balancer will be fully managed by users. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update ManualLB configurations it can only bind a pre-existing configuration to a new VMware user cluster.
class VmwareManualLbConfig {
  /// NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  final int? controlPlaneNodePort;

  /// NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  final int? ingressHttpNodePort;

  /// NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  final int? ingressHttpsNodePort;

  /// NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  final int? konnectivityServerNodePort;

  /// Creates a new [VmwareManualLbConfig].
  /// [controlPlaneNodePort] NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  /// [ingressHttpNodePort] NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  /// [ingressHttpsNodePort] NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  /// [konnectivityServerNodePort] NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  VmwareManualLbConfig({
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneNodePortValue = controlPlaneNodePort;
    if (controlPlaneNodePortValue != null) {
      map['controlPlaneNodePort'] = controlPlaneNodePortValue;
    }
    final ingressHttpNodePortValue = ingressHttpNodePort;
    if (ingressHttpNodePortValue != null) {
      map['ingressHttpNodePort'] = ingressHttpNodePortValue;
    }
    final ingressHttpsNodePortValue = ingressHttpsNodePort;
    if (ingressHttpsNodePortValue != null) {
      map['ingressHttpsNodePort'] = ingressHttpsNodePortValue;
    }
    final konnectivityServerNodePortValue = konnectivityServerNodePort;
    if (konnectivityServerNodePortValue != null) {
      map['konnectivityServerNodePort'] = konnectivityServerNodePortValue;
    }
    return map;
  }

  factory VmwareManualLbConfig.fromMap(Map<String, dynamic> map) {
    return VmwareManualLbConfig(
      controlPlaneNodePort: map['controlPlaneNodePort'] == null
          ? null
          : map['controlPlaneNodePort'] as int,
      ingressHttpNodePort: map['ingressHttpNodePort'] == null
          ? null
          : map['ingressHttpNodePort'] as int,
      ingressHttpsNodePort: map['ingressHttpsNodePort'] == null
          ? null
          : map['ingressHttpsNodePort'] as int,
      konnectivityServerNodePort: map['konnectivityServerNodePort'] == null
          ? null
          : map['konnectivityServerNodePort'] as int,
    );
  }
}
