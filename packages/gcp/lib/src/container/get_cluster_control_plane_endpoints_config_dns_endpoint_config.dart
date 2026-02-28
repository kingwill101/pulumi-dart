// ignore_for_file: unused_element, unnecessary_cast

class GetClusterControlPlaneEndpointsConfigDnsEndpointConfig {
  /// Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  final bool allowExternalTraffic;

  /// Controls whether the k8s certs auth is allowed via dns.
  final bool enableK8sCertsViaDns;

  /// Controls whether the k8s token auth is allowed via dns.
  final bool enableK8sTokensViaDns;

  /// The cluster's DNS endpoint.
  final String endpoint;

  /// Creates a new [GetClusterControlPlaneEndpointsConfigDnsEndpointConfig].
  /// [allowExternalTraffic] Controls whether user traffic is allowed over this endpoint. Note that GCP-managed services may still use the endpoint even if this is false.
  /// [enableK8sCertsViaDns] Controls whether the k8s certs auth is allowed via dns.
  /// [enableK8sTokensViaDns] Controls whether the k8s token auth is allowed via dns.
  /// [endpoint] The cluster's DNS endpoint.
  GetClusterControlPlaneEndpointsConfigDnsEndpointConfig({
    required this.allowExternalTraffic,
    required this.enableK8sCertsViaDns,
    required this.enableK8sTokensViaDns,
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowExternalTraffic'] = allowExternalTraffic;
    map['enableK8sCertsViaDns'] = enableK8sCertsViaDns;
    map['enableK8sTokensViaDns'] = enableK8sTokensViaDns;
    map['endpoint'] = endpoint;
    return map;
  }

  factory GetClusterControlPlaneEndpointsConfigDnsEndpointConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterControlPlaneEndpointsConfigDnsEndpointConfig(
      allowExternalTraffic: map['allowExternalTraffic'] as bool,
      enableK8sCertsViaDns: map['enableK8sCertsViaDns'] as bool,
      enableK8sTokensViaDns: map['enableK8sTokensViaDns'] as bool,
      endpoint: map['endpoint'] as String,
    );
  }
}
