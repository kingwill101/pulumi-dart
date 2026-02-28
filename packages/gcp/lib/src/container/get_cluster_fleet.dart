// ignore_for_file: unused_element, unnecessary_cast

class GetClusterFleet {
  /// Full resource name of the registered fleet membership of the cluster.
  final String membership;

  /// Short name of the fleet membership, for example "member-1".
  final String membershipId;

  /// Location of the fleet membership, for example "us-central1".
  final String membershipLocation;

  /// The type of the cluster's fleet membership.
  final String membershipType;

  /// Whether the cluster has been registered via the fleet API.
  final bool preRegistered;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final String project;

  /// Creates a new [GetClusterFleet].
  /// [membership] Full resource name of the registered fleet membership of the cluster.
  /// [membershipId] Short name of the fleet membership, for example "member-1".
  /// [membershipLocation] Location of the fleet membership, for example "us-central1".
  /// [membershipType] The type of the cluster's fleet membership.
  /// [preRegistered] Whether the cluster has been registered via the fleet API.
  /// [project] The project in which the resource belongs. If it
  GetClusterFleet({
    required this.membership,
    required this.membershipId,
    required this.membershipLocation,
    required this.membershipType,
    required this.preRegistered,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['membership'] = membership;
    map['membershipId'] = membershipId;
    map['membershipLocation'] = membershipLocation;
    map['membershipType'] = membershipType;
    map['preRegistered'] = preRegistered;
    map['project'] = project;
    return map;
  }

  factory GetClusterFleet.fromMap(Map<String, dynamic> map) {
    return GetClusterFleet(
      membership: map['membership'] as String,
      membershipId: map['membershipId'] as String,
      membershipLocation: map['membershipLocation'] as String,
      membershipType: map['membershipType'] as String,
      preRegistered: map['preRegistered'] as bool,
      project: map['project'] as String,
    );
  }
}
