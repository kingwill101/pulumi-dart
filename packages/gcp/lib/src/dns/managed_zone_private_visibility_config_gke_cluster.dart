// ignore_for_file: unused_element, unnecessary_cast

class ManagedZonePrivateVisibilityConfigGkeCluster {
  /// The resource name of the cluster to bind this ManagedZone to.
  /// This should be specified in the format like
  /// `projects/*/locations/*/clusters/*`
  final String gkeClusterName;

  /// Creates a new [ManagedZonePrivateVisibilityConfigGkeCluster].
  /// [gkeClusterName] The resource name of the cluster to bind this ManagedZone to.
  ManagedZonePrivateVisibilityConfigGkeCluster({required this.gkeClusterName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gkeClusterName': gkeClusterName};
  }

  factory ManagedZonePrivateVisibilityConfigGkeCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZonePrivateVisibilityConfigGkeCluster(
      gkeClusterName: map['gkeClusterName'] as String,
    );
  }
}
