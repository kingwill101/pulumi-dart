// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePrivateVisibilityConfigGKEClusterResponse {
  /// The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
  final String gkeClusterName;
  final String kind;

  ManagedZonePrivateVisibilityConfigGKEClusterResponse({
    required this.gkeClusterName,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusterName'] = gkeClusterName;
    map['kind'] = kind;
    return map;
  }

  factory ManagedZonePrivateVisibilityConfigGKEClusterResponse.fromMap(
      Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigGKEClusterResponse(
      gkeClusterName: map['gkeClusterName'] as String,
      kind: map['kind'] as String,
    );
  }
}
