// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/<location>/memberships/<cluster-id>`.
  final String? membership;

  /// Creates a new [VMwareClusterFleet].
  /// [membership] (Output)
  VMwareClusterFleet({this.membership});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'membership': ?membership};
  }

  factory VMwareClusterFleet.fromMap(Map<String, dynamic> map) {
    return VMwareClusterFleet(
      membership: map['membership'] == null
          ? null
          : map['membership'] as String,
    );
  }
}
