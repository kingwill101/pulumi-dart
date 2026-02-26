// ignore_for_file: unused_element, unnecessary_cast

class ResponsePolicyGKEClusterResponse2 {
  /// The resource name of the cluster to bind this response policy to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final String gkeClusterName;
  final String kind;

  ResponsePolicyGKEClusterResponse2({
    required this.gkeClusterName,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusterName'] = gkeClusterName;
    map['kind'] = kind;
    return map;
  }

  factory ResponsePolicyGKEClusterResponse2.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyGKEClusterResponse2(
      gkeClusterName: map['gkeClusterName'] as String,
      kind: map['kind'] as String,
    );
  }
}
