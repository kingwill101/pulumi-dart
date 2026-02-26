// ignore_for_file: unused_element, unnecessary_cast

class ClusterFleet {
  /// Full resource name of the registered fleet membership of the cluster.
  final String? membership;

  /// Short name of the fleet membership, for example "member-1".
  final String? membershipId;

  /// Location of the fleet membership, for example "us-central1".
  final String? membershipLocation;

  /// Sets the membership type of the cluster.  Available option is `LIGHTWEIGHT` to support only lightweight compatible features.  If unspecified, the<span pulumi-lang-nodejs=" membershipType " pulumi-lang-dotnet=" MembershipType " pulumi-lang-go=" membershipType " pulumi-lang-python=" membership_type " pulumi-lang-yaml=" membershipType " pulumi-lang-java=" membershipType "> membership_type </span>will be a regular membership that supports all features.
  final String? membershipType;

  /// Whether the cluster has been registered via the fleet API.
  final bool? preRegistered;

  /// The name of the Fleet host project where this cluster will be registered.
  final String? project;

  ClusterFleet({
    this.membership,
    this.membershipId,
    this.membershipLocation,
    this.membershipType,
    this.preRegistered,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final membershipValue = membership;
    if (membershipValue != null) {
      map['membership'] = membershipValue;
    }
    final membershipIdValue = membershipId;
    if (membershipIdValue != null) {
      map['membershipId'] = membershipIdValue;
    }
    final membershipLocationValue = membershipLocation;
    if (membershipLocationValue != null) {
      map['membershipLocation'] = membershipLocationValue;
    }
    final membershipTypeValue = membershipType;
    if (membershipTypeValue != null) {
      map['membershipType'] = membershipTypeValue;
    }
    final preRegisteredValue = preRegistered;
    if (preRegisteredValue != null) {
      map['preRegistered'] = preRegisteredValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ClusterFleet.fromMap(Map<String, dynamic> map) {
    return ClusterFleet(
      membership:
          map['membership'] == null ? null : map['membership'] as String,
      membershipId:
          map['membershipId'] == null ? null : map['membershipId'] as String,
      membershipLocation: map['membershipLocation'] == null
          ? null
          : map['membershipLocation'] as String,
      membershipType: map['membershipType'] == null
          ? null
          : map['membershipType'] as String,
      preRegistered:
          map['preRegistered'] == null ? null : map['preRegistered'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
