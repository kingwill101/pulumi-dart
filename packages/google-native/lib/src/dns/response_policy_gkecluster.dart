// ignore_for_file: unused_element, unnecessary_cast

class ResponsePolicyGKECluster {
  /// The resource name of the cluster to bind this response policy to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final String? gkeClusterName;
  final String? kind;

  /// Creates a new [ResponsePolicyGKECluster].
  /// [gkeClusterName] The resource name of the cluster to bind this response policy to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  /// [kind] Optional.
  ResponsePolicyGKECluster({this.gkeClusterName, this.kind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gkeClusterName': ?gkeClusterName, 'kind': ?kind};
  }

  factory ResponsePolicyGKECluster.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyGKECluster(
      gkeClusterName: map['gkeClusterName'] == null
          ? null
          : map['gkeClusterName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
