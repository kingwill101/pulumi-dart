// ignore_for_file: unused_element, unnecessary_cast

/// Information specifying an Anthos Cluster.
class AnthosClusterResponse {
  /// Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  final String membership;

  /// Creates a new [AnthosClusterResponse].
  /// [membership] Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  AnthosClusterResponse({required this.membership});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': membership};
  }

  factory AnthosClusterResponse.fromMap(Map<String, dynamic> map) {
    return AnthosClusterResponse(membership: map['membership'] as String);
  }
}
