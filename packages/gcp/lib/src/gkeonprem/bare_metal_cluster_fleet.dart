// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/<location>/memberships/<cluster-id>`.
  final String? membership;

  /// Creates a new [BareMetalClusterFleet].
  /// [membership] (Output)
  BareMetalClusterFleet({this.membership});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership};
  }

  factory BareMetalClusterFleet.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterFleet(
      membership: map['membership'] == null
          ? null
          : map['membership'] as String,
    );
  }
}
