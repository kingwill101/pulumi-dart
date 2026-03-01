// ignore_for_file: unused_element, unnecessary_cast

class ClusterControlPlaneLocal {
  /// Only machines matching this filter will be allowed to host control
  /// plane nodes. The filtering language accepts strings like "name=<name>",
  /// and is documented here: [AIP-160](https://google.aip.dev/160).
  final String? machineFilter;

  /// The number of nodes to serve as replicas of the Control Plane.
  /// Only 1 and 3 are supported.
  final int? nodeCount;

  /// Name of the Google Distributed Cloud Edge zones where this node pool
  /// will be created. For example: `us-central1-edge-customer-a`.
  final String? nodeLocation;

  /// Policy configuration about how user applications are deployed.
  /// Possible values are: `SHARED_DEPLOYMENT_POLICY_UNSPECIFIED`, `ALLOWED`, `DISALLOWED`.
  final String? sharedDeploymentPolicy;

  /// Creates a new [ClusterControlPlaneLocal].
  /// [machineFilter] Only machines matching this filter will be allowed to host control
  /// [nodeCount] The number of nodes to serve as replicas of the Control Plane.
  /// [nodeLocation] Name of the Google Distributed Cloud Edge zones where this node pool
  /// [sharedDeploymentPolicy] Policy configuration about how user applications are deployed.
  ClusterControlPlaneLocal({
    this.machineFilter,
    this.nodeCount,
    this.nodeLocation,
    this.sharedDeploymentPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineFilter': ?machineFilter,
      'nodeCount': ?nodeCount,
      'nodeLocation': ?nodeLocation,
      'sharedDeploymentPolicy': ?sharedDeploymentPolicy,
    };
  }

  factory ClusterControlPlaneLocal.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlaneLocal(
      machineFilter: map['machineFilter'] == null
          ? null
          : map['machineFilter'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      nodeLocation: map['nodeLocation'] == null
          ? null
          : map['nodeLocation'] as String,
      sharedDeploymentPolicy: map['sharedDeploymentPolicy'] == null
          ? null
          : map['sharedDeploymentPolicy'] as String,
    );
  }
}
