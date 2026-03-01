// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterLoadBalancerManualLbConfig {
  /// NodePort for control plane service. The Kubernetes API server in the admin
  /// cluster is implemented as a Service of type NodePort (ex. 30968).
  final int? controlPlaneNodePort;

  /// NodePort for ingress service's http. The ingress service in the admin
  /// cluster is implemented as a Service of type NodePort (ex. 32527).
  final int? ingressHttpNodePort;

  /// NodePort for ingress service's https. The ingress service in the admin
  /// cluster is implemented as a Service of type NodePort (ex. 30139).
  final int? ingressHttpsNodePort;

  /// NodePort for konnectivity server service running as a sidecar in each
  /// kube-apiserver pod (ex. 30564).
  final int? konnectivityServerNodePort;

  /// Creates a new [VMwareClusterLoadBalancerManualLbConfig].
  /// [controlPlaneNodePort] NodePort for control plane service. The Kubernetes API server in the admin
  /// [ingressHttpNodePort] NodePort for ingress service's http. The ingress service in the admin
  /// [ingressHttpsNodePort] NodePort for ingress service's https. The ingress service in the admin
  /// [konnectivityServerNodePort] NodePort for konnectivity server service running as a sidecar in each
  VMwareClusterLoadBalancerManualLbConfig({
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneNodePort': ?controlPlaneNodePort,
      'ingressHttpNodePort': ?ingressHttpNodePort,
      'ingressHttpsNodePort': ?ingressHttpsNodePort,
      'konnectivityServerNodePort': ?konnectivityServerNodePort,
    };
  }

  factory VMwareClusterLoadBalancerManualLbConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return VMwareClusterLoadBalancerManualLbConfig(
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
