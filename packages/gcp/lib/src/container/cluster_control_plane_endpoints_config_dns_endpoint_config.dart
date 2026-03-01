// ignore_for_file: unused_element, unnecessary_cast


class ClusterControlPlaneEndpointsConfigDnsEndpointConfig {
  /// Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  final bool? allowExternalTraffic;
  /// Controls whether the k8s certs auth is allowed via Dns.
  final bool? enableK8sCertsViaDns;
  /// Controls whether the k8s token auth is allowed via Dns.
  final bool? enableK8sTokensViaDns;
  /// The cluster's DNS endpoint.
  final String? endpoint;

  /// Creates a new [ClusterControlPlaneEndpointsConfigDnsEndpointConfig].
  /// [allowExternalTraffic] Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  /// [enableK8sCertsViaDns] Controls whether the k8s certs auth is allowed via Dns.
  /// [enableK8sTokensViaDns] Controls whether the k8s token auth is allowed via Dns.
  /// [endpoint] The cluster's DNS endpoint.
  ClusterControlPlaneEndpointsConfigDnsEndpointConfig({
    this.allowExternalTraffic,
    this.enableK8sCertsViaDns,
    this.enableK8sTokensViaDns,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowExternalTraffic': ?allowExternalTraffic,
      'enableK8sCertsViaDns': ?enableK8sCertsViaDns,
      'enableK8sTokensViaDns': ?enableK8sTokensViaDns,
      'endpoint': ?endpoint,
    };
  }

  factory ClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneEndpointsConfigDnsEndpointConfig(
      allowExternalTraffic: map['allowExternalTraffic'] == null ? null : map['allowExternalTraffic'] as bool,
      enableK8sCertsViaDns: map['enableK8sCertsViaDns'] == null ? null : map['enableK8sCertsViaDns'] as bool,
      enableK8sTokensViaDns: map['enableK8sTokensViaDns'] == null ? null : map['enableK8sTokensViaDns'] as bool,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

