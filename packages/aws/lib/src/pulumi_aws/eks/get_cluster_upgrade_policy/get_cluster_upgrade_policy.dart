// ignore_for_file: unused_element, unnecessary_cast

class GetClusterUpgradePolicy {
  /// Support type to use for the cluster.
  final String supportType;

  GetClusterUpgradePolicy({
    required this.supportType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['supportType'] = supportType;
    return map;
  }

  factory GetClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterUpgradePolicy(
      supportType: map['supportType'] as String,
    );
  }
}
