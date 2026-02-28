// ignore_for_file: unused_element, unnecessary_cast

class ResponsePolicyGkeCluster {
  /// The resource name of the cluster to bind this ManagedZone to.
  /// This should be specified in the format like
  /// `projects/*/locations/*/clusters/*`
  final String gkeClusterName;

  /// Creates a new [ResponsePolicyGkeCluster].
  /// [gkeClusterName] The resource name of the cluster to bind this ManagedZone to.
  ResponsePolicyGkeCluster({
    required this.gkeClusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeClusterName'] = gkeClusterName;
    return map;
  }

  factory ResponsePolicyGkeCluster.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyGkeCluster(
      gkeClusterName: map['gkeClusterName'] as String,
    );
  }
}
