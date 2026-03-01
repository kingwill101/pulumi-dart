// ignore_for_file: unused_element, unnecessary_cast

class GetClusterUpgradePolicy {
  /// Support type to use for the cluster.
  final String supportType;

  /// Creates a new [GetClusterUpgradePolicy].
  /// [supportType] Support type to use for the cluster.
  GetClusterUpgradePolicy({required this.supportType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'supportType': supportType};
  }

  factory GetClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterUpgradePolicy(supportType: map['supportType'] as String);
  }
}
