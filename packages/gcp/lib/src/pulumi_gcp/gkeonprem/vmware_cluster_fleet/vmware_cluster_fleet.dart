// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterFleet {
  /// (Output)
  /// The name of the managed Hub Membership resource associated to this cluster.
  /// Membership names are formatted as
  /// `projects/<project-number>/locations/<location>/memberships/<cluster-id>`.
  final String? membership;

  VMwareClusterFleet({
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

  factory VMwareClusterFleet.fromMap(Map<String, dynamic> map) {
    return VMwareClusterFleet(
      membership:
          map['membership'] == null ? null : map['membership'] as String,
    );
  }
}
