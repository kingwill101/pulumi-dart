// ignore_for_file: unused_element, unnecessary_cast

class ClusterUpgradePolicy {
  /// Support type to use for the cluster. If the cluster is set to `EXTENDED`, it will enter extended support at the end of standard support. If the cluster is set to `STANDARD`, it will be automatically upgraded at the end of standard support. Valid values are `EXTENDED`, `STANDARD`
  final String? supportType;

  /// Creates a new [ClusterUpgradePolicy].
  /// [supportType] Support type to use for the cluster. If the cluster is set to `EXTENDED`, it will enter extended support at the end of standard support. If the cluster is set to `STANDARD`, it will be automatically upgraded at the end of standard support. Valid values are `EXTENDED`, `STANDARD`
  ClusterUpgradePolicy({
    this.supportType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final supportTypeValue = supportType;
    if (supportTypeValue != null) {
      map['supportType'] = supportTypeValue;
    }
    return map;
  }

  factory ClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicy(
      supportType:
          map['supportType'] == null ? null : map['supportType'] as String,
    );
  }
}
