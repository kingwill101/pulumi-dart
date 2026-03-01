// ignore_for_file: unused_element, unnecessary_cast


class VmwareAdminClusterFleet {
  /// (Output)
  /// The name of the managed Fleet Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/<location>/memberships/<cluster-id>`.
  final String? membership;

  /// Creates a new [VmwareAdminClusterFleet].
  /// [membership] (Output)
  VmwareAdminClusterFleet({
    this.membership,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'membership': ?membership,
    };
  }

  factory VmwareAdminClusterFleet.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterFleet(
      membership: map['membership'] == null ? null : map['membership'] as String,
    );
  }
}

