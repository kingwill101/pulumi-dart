// ignore_for_file: unused_element, unnecessary_cast


class TargetAssociatedEntityAnthosCluster {
  /// Optional. Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  final String? membership;

  /// Creates a new [TargetAssociatedEntityAnthosCluster].
  /// [membership] Optional. Membership of the GKE Hub-registered cluster to which to apply the Skaffold configuration. Format is `projects/{project}/locations/{location}/memberships/{membership_name}`.
  TargetAssociatedEntityAnthosCluster({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
    };
  }

  factory TargetAssociatedEntityAnthosCluster.fromMap(Map<String, dynamic> map) {
    return TargetAssociatedEntityAnthosCluster(
      membership: map['membership'] == null ? null : map['membership'] as String,
    );
  }
}

