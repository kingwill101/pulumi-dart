// ignore_for_file: unused_element, unnecessary_cast

/// Information specifying an Anthos Cluster.
class AnthosCluster {
  /// Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  final String? membership;

  /// Creates a new [AnthosCluster].
  /// [membership] Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  AnthosCluster({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final membershipValue = membership;
    if (membershipValue != null) {
      map['membership'] = membershipValue;
    }
    return map;
  }

  factory AnthosCluster.fromMap(Map<String, dynamic> map) {
    return AnthosCluster(
      membership:
          map['membership'] == null ? null : map['membership'] as String,
    );
  }
}
