// ignore_for_file: unused_element, unnecessary_cast

class BareMetalAdminClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/<location>/memberships/<cluster-id>`.
  final String? membership;

  /// Creates a new [BareMetalAdminClusterFleet].
  /// [membership] (Output)
  BareMetalAdminClusterFleet({
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

  factory BareMetalAdminClusterFleet.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterFleet(
      membership:
          map['membership'] == null ? null : map['membership'] as String,
    );
  }
}
