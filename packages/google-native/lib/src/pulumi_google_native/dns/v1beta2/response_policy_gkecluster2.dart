// ignore_for_file: unused_element, unnecessary_cast

class ResponsePolicyGKECluster2 {
  /// The resource name of the cluster to bind this response policy to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final String? gkeClusterName;
  final String? kind;

  ResponsePolicyGKECluster2({
    this.gkeClusterName,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeClusterNameValue = gkeClusterName;
    if (gkeClusterNameValue != null) {
      map['gkeClusterName'] = gkeClusterNameValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory ResponsePolicyGKECluster2.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyGKECluster2(
      gkeClusterName: map['gkeClusterName'] == null
          ? null
          : map['gkeClusterName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
